.class Lcom/android/server/am/ActivityManagerService$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$1;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$1;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method public dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 3

    if-eqz p4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$1;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "activities"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2, v1, p4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$1;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "service"

    const-string v2, "com.android.systemui/.SystemUIService"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2, v1, p4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method public dumpNormal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$1;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "-a"

    const-string v2, "--normal-priority"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2, v1, p4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method
