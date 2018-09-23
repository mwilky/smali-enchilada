.class public Lcom/android/server/secrecy/work/ActivityEncryptWork;
.super Lcom/android/server/secrecy/work/SecrecyWork;
.source "ActivityEncryptWork.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mActivityCofig:Lcom/android/server/secrecy/work/ActivityConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SecrecyService.ActivityEncryptWork"

    sput-object v0, Lcom/android/server/secrecy/work/ActivityEncryptWork;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/server/secrecy/work/ActivityEncryptWork;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/secrecy/work/ActivityEncryptWork;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/secrecy/work/SecrecyWork;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/secrecy/work/ActivityConfig;->getInstance()Lcom/android/server/secrecy/work/ActivityConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/work/ActivityEncryptWork;->mActivityCofig:Lcom/android/server/secrecy/work/ActivityConfig;

    return-void
.end method


# virtual methods
.method public doWork(Landroid/content/pm/ActivityInfo;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/secrecy/work/SecrecyWork;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/secrecy/work/ActivityEncryptWork;->mActivityCofig:Lcom/android/server/secrecy/work/ActivityConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/secrecy/work/ActivityConfig;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public preWork(Landroid/content/pm/ActivityInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/secrecy/work/ActivityEncryptWork;->mActivityCofig:Lcom/android/server/secrecy/work/ActivityConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/work/ActivityConfig;->isInActivityConfig(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method
