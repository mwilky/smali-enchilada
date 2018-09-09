.class public Lcom/android/server/secrecy/work/SecrecyWork;
.super Ljava/lang/Object;
.source "SecrecyWork.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mName:Ljava/lang/String;

.field private final mPolicy:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/secrecy/work/SecrecyWork;->mPolicy:Z

    .line 18
    iput-object p1, p0, Lcom/android/server/secrecy/work/SecrecyWork;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/android/server/secrecy/work/SecrecyWork;->mName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 0

    .line 30
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 38
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/server/secrecy/work/SecrecyWork;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkPolicy()Z
    .locals 1

    .line 34
    const/4 v0, 0x1

    return v0
.end method
