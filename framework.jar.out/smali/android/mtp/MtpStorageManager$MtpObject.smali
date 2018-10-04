.class public Landroid/mtp/MtpStorageManager$MtpObject;
.super Ljava/lang/Object;
.source "MtpStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtpObject"
.end annotation


# instance fields
.field private mChildren:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private mIsDir:Z

.field private mName:Ljava/lang/String;

.field private mObserver:Landroid/os/FileObserver;

.field private mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

.field private mParent:Landroid/mtp/MtpStorageManager$MtpObject;

.field private mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field private mVisited:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/mtp/MtpStorageManager$MtpObject;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    iput-object p3, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    sget-object v1, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    iput-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    iput-boolean p4, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    sget-object v1, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    iput-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    nop

    :cond_0
    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$100(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 1

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getChild(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->addChild(Landroid/mtp/MtpStorageManager$MtpObject;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;
    .locals 1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getState()Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;
    .locals 1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getOperation()Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setDir(Z)V

    return-void
.end method

.method static synthetic access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setState(Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .locals 1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->exists()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setOperation(Landroid/mtp/MtpStorageManager$MtpOperation;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 1

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->copy(Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setParent(Landroid/mtp/MtpStorageManager$MtpObject;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/mtp/MtpStorageManager$MtpObject;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setId(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    return-object v0
.end method

.method static synthetic access$402(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)Landroid/os/FileObserver;
    .locals 0

    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    return-object p1
.end method

.method static synthetic access$500(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;
    .locals 1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getObserver()Landroid/os/FileObserver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setObserver(Landroid/os/FileObserver;)V

    return-void
.end method

.method static synthetic access$700(Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .locals 1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isVisited()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setVisited(Z)V

    return-void
.end method

.method static synthetic access$900(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;
    .locals 1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getChildren()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private addChild(Landroid/mtp/MtpStorageManager$MtpObject;)V
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private copy(Z)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 5

    new-instance v0, Landroid/mtp/MtpStorageManager$MtpObject;

    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    iget v2, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    iget-object v3, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    iget-boolean v4, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/mtp/MtpStorageManager$MtpObject;-><init>(Ljava/lang/String;ILandroid/mtp/MtpStorageManager$MtpObject;Z)V

    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    iput-boolean v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    iput-boolean v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    iput-object v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorageManager$MtpObject;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->copy(Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v3

    invoke-direct {v3, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->setParent(Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-direct {v0, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->addChild(Landroid/mtp/MtpStorageManager$MtpObject;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private exists()Z
    .locals 1

    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private getChild(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageManager$MtpObject;

    return-object v0
.end method

.method private getChildren()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private getObserver()Landroid/os/FileObserver;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    return-object v0
.end method

.method private getOperation()Landroid/mtp/MtpStorageManager$MtpOperation;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    return-object v0
.end method

.method private getState()Landroid/mtp/MtpStorageManager$MtpObjectState;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    return-object v0
.end method

.method private isVisited()Z
    .locals 1

    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    return v0
.end method

.method private setDir(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method private setId(I)V
    .locals 0

    iput p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    return-void
.end method

.method private setObserver(Landroid/os/FileObserver;)V
    .locals 0

    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    return-void
.end method

.method private setOperation(Landroid/mtp/MtpStorageManager$MtpOperation;)V
    .locals 0

    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    return-void
.end method

.method private setParent(Landroid/mtp/MtpStorageManager$MtpObject;)V
    .locals 0

    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    return-void
.end method

.method private setState(Landroid/mtp/MtpStorageManager$MtpObjectState;)V
    .locals 2

    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    sget-object v1, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    :cond_0
    return-void
.end method

.method private setVisited(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    return-void
.end method


# virtual methods
.method public getFormat()I
    .locals 2

    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3001

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    return v0
.end method

.method public getModifiedTime()J
    .locals 4

    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 2

    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRoot()Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 1

    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getRoot()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getStorageId()I
    .locals 1

    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getRoot()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v0

    return v0
.end method

.method public isDir()Z
    .locals 1

    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    return v0
.end method

.method public isRoot()Z
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
