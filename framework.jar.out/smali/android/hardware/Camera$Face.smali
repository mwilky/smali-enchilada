.class public Landroid/hardware/Camera$Face;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public blinkDetected:I

.field public faceRecognised:I

.field public id:I

.field public isSmile:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I

.field public smileDegree:I

.field public smileScore:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2284
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/Camera$Face;->id:I

    .line 2293
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    .line 2302
    iput-object v0, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    .line 2311
    iput-object v0, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    .line 2316
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/Camera$Face;->smileDegree:I

    .line 2320
    iput v0, p0, Landroid/hardware/Camera$Face;->smileScore:I

    .line 2325
    iput v0, p0, Landroid/hardware/Camera$Face;->isSmile:I

    .line 2336
    iput v0, p0, Landroid/hardware/Camera$Face;->blinkDetected:I

    .line 2340
    iput v0, p0, Landroid/hardware/Camera$Face;->faceRecognised:I

    .line 2225
    return-void
.end method


# virtual methods
.method public getIsSmile()I
    .locals 1

    .line 2331
    iget v0, p0, Landroid/hardware/Camera$Face;->isSmile:I

    return v0
.end method
