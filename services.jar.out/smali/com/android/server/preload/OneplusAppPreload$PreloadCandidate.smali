.class Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;
.super Ljava/lang/Object;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreloadCandidate"
.end annotation


# instance fields
.field private mPackage:Ljava/lang/String;

.field private mPreloadSource:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$PreloadSource;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->mPackage:Ljava/lang/String;

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->UNKNOWN:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->mPreloadSource:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->mPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->mPreloadSource:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Lcom/android/server/preload/OneplusAppPreload$PreloadSource;
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->mPreloadSource:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->mPackage:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->mPreloadSource:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    instance-of v1, p1, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;

    if-nez v1, :cond_2

    return v0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->mPackage:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
