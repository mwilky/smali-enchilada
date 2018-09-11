.class public Lcom/airbnb/lottie/LottieImageAsset;
.super Ljava/lang/Object;
.source "LottieImageAsset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieImageAsset$Factory;
    }
.end annotation


# instance fields
.field private final fileName:Ljava/lang/String;

.field private final height:I

.field private final id:Ljava/lang/String;

.field private final width:I


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    .line 17
    iput p2, p0, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    .line 18
    iput-object p3, p0, Lcom/airbnb/lottie/LottieImageAsset;->id:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/airbnb/lottie/LottieImageAsset$1;

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/LottieImageAsset;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    return v0
.end method
