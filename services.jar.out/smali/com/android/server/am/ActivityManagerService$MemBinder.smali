.class Lcom/android/server/am/ActivityManagerService$MemBinder;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MemBinder"
.end annotation


# instance fields
.field mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private final mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    .line 3249
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 3234
    new-instance v0, Lcom/android/server/am/ActivityManagerService$MemBinder$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerService$MemBinder$1;-><init>(Lcom/android/server/am/ActivityManagerService$MemBinder;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    .line 3250
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 3251
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3255
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "meminfo"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3256
    return-void

    .line 3257
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3258
    return-void
.end method
