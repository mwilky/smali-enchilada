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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/secrecy/work/SecrecyWork;->mPolicy:Z

    iput-object p1, p0, Lcom/android/server/secrecy/work/SecrecyWork;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/secrecy/work/SecrecyWork;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 0

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/secrecy/work/SecrecyWork;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkPolicy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
