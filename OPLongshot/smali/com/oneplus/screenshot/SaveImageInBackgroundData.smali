.class Lcom/oneplus/screenshot/SaveImageInBackgroundData;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# instance fields
.field context:Landroid/content/Context;

.field delayAction:Ljava/lang/Runnable;

.field errorMsgResId:I

.field finisher:Ljava/lang/Runnable;

.field handler:Landroid/os/Handler;

.field iconSize:I

.field image:Landroid/graphics/Bitmap;

.field imageUri:Landroid/net/Uri;

.field needRecycle:Z

.field previewWidth:I

.field previewheight:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clearContext()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    return-void
.end method

.method clearImage()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->iconSize:I

    return-void
.end method

.method doDelayAction()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->delayAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->delayAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
