.class public final Landroid/view/DisplayInfo;
.super Ljava/lang/Object;
.source "DisplayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address:Ljava/lang/String;

.field public appHeight:I

.field public appVsyncOffsetNanos:J

.field public appWidth:I

.field public colorMode:I

.field public defaultModeId:I

.field public displayCutout:Landroid/view/DisplayCutout;

.field public flags:I

.field public hdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field public largestNominalAppHeight:I

.field public largestNominalAppWidth:I

.field public layerStack:I

.field public logicalDensityDpi:I

.field public logicalHeight:I

.field public logicalWidth:I

.field public modeId:I

.field public name:Ljava/lang/String;

.field public overscanBottom:I

.field public overscanLeft:I

.field public overscanRight:I

.field public overscanTop:I

.field public ownerPackageName:Ljava/lang/String;

.field public ownerUid:I

.field public physicalXDpi:F

.field public physicalYDpi:F

.field public presentationDeadlineNanos:J

.field public removeMode:I

.field public rotation:I

.field public smallestNominalAppHeight:I

.field public smallestNominalAppWidth:I

.field public state:I

.field public supportedColorModes:[I

.field public supportedModes:[Landroid/view/Display$Mode;

.field public type:I

.field public uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 272
    new-instance v0, Landroid/view/DisplayInfo$1;

    invoke-direct {v0}, Landroid/view/DisplayInfo$1;-><init>()V

    sput-object v0, Landroid/view/DisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 198
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 270
    iput v1, p0, Landroid/view/DisplayInfo;->removeMode:I

    .line 285
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 198
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 270
    iput v1, p0, Landroid/view/DisplayInfo;->removeMode:I

    .line 292
    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 293
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/DisplayInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/DisplayInfo$1;

    .line 49
    invoke-direct {p0, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/DisplayInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/view/DisplayInfo;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 198
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 270
    iput v1, p0, Landroid/view/DisplayInfo;->removeMode:I

    .line 288
    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 289
    return-void
.end method

.method private findMode(I)Landroid/view/Display$Mode;
    .locals 3
    .param p1, "id"    # I

    .line 486
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 487
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 488
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    aget-object v1, v1, v0

    return-object v1

    .line 486
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to locate mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 728
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_0

    .line 729
    const-string v1, ", FLAG_SECURE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    :cond_0
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    .line 732
    const-string v1, ", FLAG_SUPPORTS_PROTECTED_BUFFERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 735
    const-string v1, ", FLAG_PRIVATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 738
    const-string v1, ", FLAG_PRESENTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    :cond_3
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    .line 741
    const-string v1, ", FLAG_SCALING_DISABLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_5

    .line 744
    const-string v1, ", FLAG_ROUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V
    .locals 5
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 584
    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 585
    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v0, v0

    const v1, 0x3bcccccd    # 0.00625f

    mul-float/2addr v0, v1

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 587
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 588
    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 589
    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 591
    if-eqz p3, :cond_0

    .line 592
    iget-object v0, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 593
    .local v0, "appBounds":Landroid/graphics/Rect;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, p4

    :goto_1
    move p4, v1

    .line 594
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, p5

    :goto_2
    move p5, v1

    .line 598
    sget-boolean v1, Landroid/view/ViewRootImpl;->IS_SCREEN_COMPAT_ENABLED:Z

    const/4 v2, 0x5

    if-eqz v1, :cond_5

    sget-boolean v1, Landroid/view/ViewRootImpl;->sIsScreenCompatMode:Z

    if-eqz v1, :cond_5

    .line 599
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_3

    .line 600
    const-string v1, "DisplayInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getMetricsWithSize, height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " caller:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 600
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_3
    if-le p4, p5, :cond_4

    .line 604
    mul-int/lit8 v1, p5, 0x10

    div-int/lit8 p4, v1, 0x9

    goto :goto_3

    .line 606
    :cond_4
    mul-int/lit8 v1, p4, 0x10

    div-int/lit8 p5, v1, 0x9

    goto :goto_3

    .line 609
    :cond_5
    sget-boolean v1, Landroid/view/ViewRootImpl;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v1, :cond_8

    sget-boolean v1, Landroid/view/ViewRootImpl;->sIsNotchLimited:Z

    if-eqz v1, :cond_8

    .line 610
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_6

    .line 611
    const-string v1, "DisplayInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraNotch: getMetricsWithSize, height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " caller:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 611
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_6
    if-le p4, p5, :cond_7

    .line 615
    add-int/lit8 p4, p4, -0x50

    goto :goto_3

    .line 617
    :cond_7
    add-int/lit8 p5, p5, -0x50

    .line 622
    :cond_8
    :goto_3
    iput p4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p4, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 623
    iput p5, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p5, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 625
    sget-object v1, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p2, v1}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 626
    invoke-virtual {p2, p1}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 628
    :cond_9
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/view/DisplayInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/view/DisplayInfo;

    .line 343
    iget v0, p1, Landroid/view/DisplayInfo;->layerStack:I

    iput v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    .line 344
    iget v0, p1, Landroid/view/DisplayInfo;->flags:I

    iput v0, p0, Landroid/view/DisplayInfo;->flags:I

    .line 345
    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    iput v0, p0, Landroid/view/DisplayInfo;->type:I

    .line 346
    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    .line 347
    iget-object v0, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 348
    iget-object v0, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 349
    iget v0, p1, Landroid/view/DisplayInfo;->appWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    .line 350
    iget v0, p1, Landroid/view/DisplayInfo;->appHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    .line 351
    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 352
    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 353
    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 354
    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 355
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 356
    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 357
    iget v0, p1, Landroid/view/DisplayInfo;->overscanLeft:I

    iput v0, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    .line 358
    iget v0, p1, Landroid/view/DisplayInfo;->overscanTop:I

    iput v0, p0, Landroid/view/DisplayInfo;->overscanTop:I

    .line 359
    iget v0, p1, Landroid/view/DisplayInfo;->overscanRight:I

    iput v0, p0, Landroid/view/DisplayInfo;->overscanRight:I

    .line 360
    iget v0, p1, Landroid/view/DisplayInfo;->overscanBottom:I

    iput v0, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 361
    iget-object v0, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 362
    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    iput v0, p0, Landroid/view/DisplayInfo;->rotation:I

    .line 363
    iget v0, p1, Landroid/view/DisplayInfo;->modeId:I

    iput v0, p0, Landroid/view/DisplayInfo;->modeId:I

    .line 364
    iget v0, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    iput v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 365
    iget-object v0, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v1, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 366
    iget v0, p1, Landroid/view/DisplayInfo;->colorMode:I

    iput v0, p0, Landroid/view/DisplayInfo;->colorMode:I

    .line 367
    iget-object v0, p1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    iget-object v1, p1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 369
    iget-object v0, p1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 370
    iget v0, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 371
    iget v0, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 372
    iget v0, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 373
    iget-wide v0, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iput-wide v0, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 374
    iget-wide v0, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iput-wide v0, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 375
    iget v0, p1, Landroid/view/DisplayInfo;->state:I

    iput v0, p0, Landroid/view/DisplayInfo;->state:I

    .line 376
    iget v0, p1, Landroid/view/DisplayInfo;->ownerUid:I

    iput v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    .line 377
    iget-object v0, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 378
    iget v0, p1, Landroid/view/DisplayInfo;->removeMode:I

    iput v0, p0, Landroid/view/DisplayInfo;->removeMode:I

    .line 379
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Landroid/view/DisplayInfo;)Z
    .locals 4
    .param p1, "other"    # Landroid/view/DisplayInfo;

    .line 301
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    iget v1, p1, Landroid/view/DisplayInfo;->layerStack:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->flags:I

    iget v1, p1, Landroid/view/DisplayInfo;->flags:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->type:I

    iget v1, p1, Landroid/view/DisplayInfo;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    iget-object v1, p1, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    .line 305
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v1, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 306
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v1, p1, Landroid/view/DisplayInfo;->appWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    iget v1, p1, Landroid/view/DisplayInfo;->appHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iget v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget v1, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iget v1, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    iget v1, p1, Landroid/view/DisplayInfo;->overscanLeft:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->overscanTop:I

    iget v1, p1, Landroid/view/DisplayInfo;->overscanTop:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->overscanRight:I

    iget v1, p1, Landroid/view/DisplayInfo;->overscanRight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    iget v1, p1, Landroid/view/DisplayInfo;->overscanBottom:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v1, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 319
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    iget v1, p1, Landroid/view/DisplayInfo;->rotation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->modeId:I

    iget v1, p1, Landroid/view/DisplayInfo;->modeId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    iget v1, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->colorMode:I

    iget v1, p1, Landroid/view/DisplayInfo;->colorMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    iget-object v1, p1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 324
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget-object v1, p1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 325
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v1, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v1, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget v1, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iget-wide v2, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iget-wide v2, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->state:I

    iget v1, p1, Landroid/view/DisplayInfo;->state:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    iget v1, p1, Landroid/view/DisplayInfo;->ownerUid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 333
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->removeMode:I

    iget v1, p1, Landroid/view/DisplayInfo;->removeMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 301
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 297
    instance-of v0, p1, Landroid/view/DisplayInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/DisplayInfo;

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public findDefaultModeByRefreshRate(F)I
    .locals 7
    .param p1, "refreshRate"    # F

    .line 499
    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 500
    .local v0, "modes":[Landroid/view/Display$Mode;
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v1

    .line 501
    .local v1, "defaultMode":Landroid/view/Display$Mode;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 502
    aget-object v4, v0, v3

    .line 503
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    .line 502
    invoke-virtual {v4, v5, v6, p1}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 504
    aget-object v2, v0, v3

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    return v2

    .line 501
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 507
    .end local v3    # "i":I
    :cond_1
    return v2
.end method

.method public getAppMetrics(Landroid/util/DisplayMetrics;)V
    .locals 2
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;

    .line 533
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 534
    return-void
.end method

.method public getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "ci"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    .line 543
    iget v4, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v5, p0, Landroid/view/DisplayInfo;->appHeight:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 544
    return-void
.end method

.method public getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V
    .locals 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .line 537
    invoke-virtual {p2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    .line 538
    invoke-virtual {p2}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v4, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v5, p0, Landroid/view/DisplayInfo;->appHeight:I

    .line 537
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 539
    return-void
.end method

.method public getDefaultMode()Landroid/view/Display$Mode;
    .locals 1

    .line 482
    iget v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    invoke-direct {p0, v0}, Landroid/view/DisplayInfo;->findMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRefreshRates()[F
    .locals 9

    .line 514
    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 515
    .local v0, "modes":[Landroid/view/Display$Mode;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 516
    .local v1, "rates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Float;>;"
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v2

    .line 517
    .local v2, "defaultMode":Landroid/view/Display$Mode;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 518
    aget-object v4, v0, v3

    .line 519
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 520
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 521
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 517
    .end local v4    # "mode":Landroid/view/Display$Mode;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 524
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-array v3, v3, [F

    .line 525
    .local v3, "result":[F
    const/4 v4, 0x0

    .line 526
    .local v4, "i":I
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 527
    .local v6, "rate":Ljava/lang/Float;
    add-int/lit8 v7, v4, 0x1

    .local v7, "i":I
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v3, v4

    .line 528
    .end local v4    # "i":I
    .end local v6    # "rate":Ljava/lang/Float;
    nop

    .line 526
    move v4, v7

    goto :goto_1

    .line 529
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_2
    return-object v3
.end method

.method public getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    .line 548
    iget v4, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 549
    return-void
.end method

.method public getMode()Landroid/view/Display$Mode;
    .locals 1

    .line 478
    iget v0, p0, Landroid/view/DisplayInfo;->modeId:I

    invoke-direct {p0, v0}, Landroid/view/DisplayInfo;->findMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getNaturalHeight()I
    .locals 2

    .line 557
    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 557
    :goto_1
    return v0
.end method

.method public getNaturalWidth()I
    .locals 2

    .line 552
    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 553
    :cond_0
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 552
    :goto_1
    return v0
.end method

.method public hasAccess(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 579
    iget v0, p0, Landroid/view/DisplayInfo;->flags:I

    iget v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    invoke-static {p1, v0, v1}, Landroid/view/Display;->hasAccess(III)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public isHdr()Z
    .locals 2

    .line 562
    iget-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {v0}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 563
    .local v0, "types":[I
    :goto_0
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isWideColorGamut()Z
    .locals 6

    .line 567
    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    .line 568
    .local v4, "colorMode":I
    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    const/4 v5, 0x7

    if-le v4, v5, :cond_0

    goto :goto_1

    .line 567
    .end local v4    # "colorMode":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 569
    .restart local v4    # "colorMode":I
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 572
    .end local v4    # "colorMode":I
    :cond_2
    return v2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->flags:I

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->type:I

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->overscanTop:I

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->overscanRight:I

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 399
    invoke-static {p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->readCutoutFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->rotation:I

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->modeId:I

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 404
    .local v0, "nModes":I
    new-array v1, v0, [Landroid/view/Display$Mode;

    iput-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 405
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 406
    iget-object v3, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    sget-object v4, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display$Mode;

    aput-object v4, v3, v2

    .line 405
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 408
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/DisplayInfo;->colorMode:I

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 410
    .local v2, "nColorModes":I
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 411
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 412
    iget-object v3, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v1

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 414
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/Display$HdrCapabilities;

    iput-object v1, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/DisplayInfo;->state:I

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/DisplayInfo;->removeMode:I

    .line 425
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 634
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "DisplayInfo{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    iget-object v1, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const-string v1, "\", uniqueId \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    iget-object v1, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string v1, "\", app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    iget v1, p0, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 640
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    iget v1, p0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 642
    const-string v1, ", real "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    iget v1, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 644
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    iget v1, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 646
    iget v1, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->overscanTop:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->overscanRight:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    if-eqz v1, :cond_1

    .line 647
    :cond_0
    const-string v1, ", overscan ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    iget v1, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 649
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    iget v1, p0, Landroid/view/DisplayInfo;->overscanTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 651
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    iget v1, p0, Landroid/view/DisplayInfo;->overscanRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 653
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    iget v1, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :cond_1
    const-string v1, ", largest app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 659
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 661
    const-string v1, ", smallest app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 663
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 665
    const-string v1, ", mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    iget v1, p0, Landroid/view/DisplayInfo;->modeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 667
    const-string v1, ", defaultMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    iget v1, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 669
    const-string v1, ", modes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    const-string v1, ", colorMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    iget v1, p0, Landroid/view/DisplayInfo;->colorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 673
    const-string v1, ", supportedColorModes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    const-string v1, ", hdrCapabilities "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    iget-object v1, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 677
    const-string v1, ", rotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    iget v1, p0, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 679
    const-string v1, ", density "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    iget v1, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 681
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    iget v1, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 683
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    iget v1, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 685
    const-string v1, ") dpi, layerStack "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    iget v1, p0, Landroid/view/DisplayInfo;->layerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 687
    const-string v1, ", appVsyncOff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    iget-wide v1, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 689
    const-string v1, ", presDeadline "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    iget-wide v1, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 691
    const-string v1, ", type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    iget v1, p0, Landroid/view/DisplayInfo;->type:I

    invoke-static {v1}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    iget-object v1, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 694
    const-string v1, ", address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    :cond_2
    const-string v1, ", state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    iget v1, p0, Landroid/view/DisplayInfo;->state:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    iget v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 699
    :cond_3
    const-string v1, ", owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    const-string v1, " (uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    :cond_4
    iget v1, p0, Landroid/view/DisplayInfo;->flags:I

    invoke-static {v1}, Landroid/view/DisplayInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    const-string v1, ", removeMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    iget v1, p0, Landroid/view/DisplayInfo;->removeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 705
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 429
    iget v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget v0, p0, Landroid/view/DisplayInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    iget v0, p0, Landroid/view/DisplayInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    iget-object v0, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 434
    iget v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    iget v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget v0, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    iget v0, p0, Landroid/view/DisplayInfo;->overscanTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget v0, p0, Landroid/view/DisplayInfo;->overscanRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget v0, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget-object v0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0, p1, p2}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeCutoutToParcel(Landroid/view/DisplayCutout;Landroid/os/Parcel;I)V

    .line 447
    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    iget v0, p0, Landroid/view/DisplayInfo;->modeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 452
    iget-object v2, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Landroid/view/Display$Mode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v1    # "i":I
    :cond_0
    iget v1, p0, Landroid/view/DisplayInfo;->colorMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    nop

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 457
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 459
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 460
    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 462
    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 463
    iget-wide v0, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 464
    iget-wide v0, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 465
    iget v0, p0, Landroid/view/DisplayInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    iget v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iget-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    iget v0, p0, Landroid/view/DisplayInfo;->removeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 717
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 718
    .local v0, "token":J
    iget v2, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 719
    iget v2, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 720
    iget v2, p0, Landroid/view/DisplayInfo;->appWidth:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 721
    iget v2, p0, Landroid/view/DisplayInfo;->appHeight:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 722
    iget-object v2, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    const-wide v3, 0x10900000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 723
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 724
    return-void
.end method
