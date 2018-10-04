.class public Landroid/media/BufferingParams$Builder;
.super Ljava/lang/Object;
.source "BufferingParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/BufferingParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mInitialMarkMs:I

.field private mResumePlaybackMarkMs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mInitialMarkMs:I

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mResumePlaybackMarkMs:I

    return-void
.end method

.method public constructor <init>(Landroid/media/BufferingParams;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mInitialMarkMs:I

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mResumePlaybackMarkMs:I

    invoke-static {p1}, Landroid/media/BufferingParams;->access$000(Landroid/media/BufferingParams;)I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mInitialMarkMs:I

    invoke-static {p1}, Landroid/media/BufferingParams;->access$100(Landroid/media/BufferingParams;)I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mResumePlaybackMarkMs:I

    return-void
.end method


# virtual methods
.method public build()Landroid/media/BufferingParams;
    .locals 2

    new-instance v0, Landroid/media/BufferingParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/BufferingParams;-><init>(Landroid/media/BufferingParams$1;)V

    iget v1, p0, Landroid/media/BufferingParams$Builder;->mInitialMarkMs:I

    invoke-static {v0, v1}, Landroid/media/BufferingParams;->access$002(Landroid/media/BufferingParams;I)I

    iget v1, p0, Landroid/media/BufferingParams$Builder;->mResumePlaybackMarkMs:I

    invoke-static {v0, v1}, Landroid/media/BufferingParams;->access$102(Landroid/media/BufferingParams;I)I

    return-object v0
.end method

.method public setInitialMarkMs(I)Landroid/media/BufferingParams$Builder;
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams$Builder;->mInitialMarkMs:I

    return-object p0
.end method

.method public setResumePlaybackMarkMs(I)Landroid/media/BufferingParams$Builder;
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams$Builder;->mResumePlaybackMarkMs:I

    return-object p0
.end method
