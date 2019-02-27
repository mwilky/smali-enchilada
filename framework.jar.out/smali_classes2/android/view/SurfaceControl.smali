.class public Landroid/view/SurfaceControl;
.super Ljava/lang/Object;
.source "SurfaceControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$Transaction;,
        Landroid/view/SurfaceControl$PhysicalDisplayInfo;,
        Landroid/view/SurfaceControl$Builder;
    }
.end annotation


# static fields
.field public static final BUILT_IN_DISPLAY_ID_EXT_MAX:I = 0x7

.field public static final BUILT_IN_DISPLAY_ID_EXT_MIN:I = 0x5

.field public static final BUILT_IN_DISPLAY_ID_HDMI:I = 0x1

.field public static final BUILT_IN_DISPLAY_ID_MAIN:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURSOR_WINDOW:I = 0x2000

.field public static final FX_SURFACE_DIM:I = 0x20000

.field public static final FX_SURFACE_MASK:I = 0xf0000

.field public static final FX_SURFACE_NORMAL:I = 0x0

.field public static final HIDDEN:I = 0x4

.field public static final NON_PREMULTIPLIED:I = 0x100

.field public static final OPAQUE:I = 0x400

.field public static final POWER_MODE_DOZE:I = 0x1

.field public static final POWER_MODE_DOZE_SUSPEND:I = 0x3

.field public static final POWER_MODE_NORMAL:I = 0x2

.field public static final POWER_MODE_OFF:I = 0x0

.field public static final POWER_MODE_ON_SUSPEND:I = 0x4

.field public static final PROTECTED_APP:I = 0x800

.field public static final SECURE:I = 0x80

.field private static final SURFACE_HIDDEN:I = 0x1

.field private static final SURFACE_OPAQUE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SurfaceControl"

.field public static final WINDOW_TYPE_DONT_SCREENSHOT:I = 0x6bd83

.field static sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

.field static sTransactionNestCount:J


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mHeight:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSizeLock"
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field mNativeObject:J

.field private final mSizeLock:Ljava/lang/Object;

.field private mWidth:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSizeLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 175
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    .line 661
    new-instance v0, Landroid/view/SurfaceControl$1;

    invoke-direct {v0}, Landroid/view/SurfaceControl$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 168
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mSizeLock:Ljava/lang/Object;

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    .line 626
    invoke-static {p1}, Landroid/view/SurfaceControl;->nativeReadFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 627
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 631
    return-void

    .line 628
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t read SurfaceControl from parcel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/SurfaceControl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/SurfaceControl$1;

    .line 60
    invoke-direct {p0, p1}, Landroid/view/SurfaceControl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "other"    # Landroid/view/SurfaceControl;

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 168
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mSizeLock:Ljava/lang/Object;

    .line 613
    iget-object v0, p1, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 614
    iget v0, p1, Landroid/view/SurfaceControl;->mWidth:I

    iput v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    .line 615
    iget v0, p1, Landroid/view/SurfaceControl;->mHeight:I

    iput v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    .line 616
    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    iput-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 617
    iget-object v0, p1, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 618
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 619
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method private constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;II)V
    .locals 16
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "format"    # I
    .param p6, "flags"    # I
    .param p7, "parent"    # Landroid/view/SurfaceControl;
    .param p8, "windowType"    # I
    .param p9, "ownerUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p7

    .line 579
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, v0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 168
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/view/SurfaceControl;->mSizeLock:Ljava/lang/Object;

    .line 580
    if-eqz p1, :cond_4

    .line 583
    if-eqz v11, :cond_3

    .line 587
    and-int/lit8 v1, p6, 0x4

    if-nez v1, :cond_0

    .line 588
    const-string v1, "SurfaceControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Surfaces should always be created with the HIDDEN flag set to ensure that they are not made visible prematurely before all of the surface\'s properties have been configured.  Set the other properties and make the surface visible within a transaction.  New surface name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    :cond_0
    iput-object v11, v0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 597
    move/from16 v13, p3

    iput v13, v0, Landroid/view/SurfaceControl;->mWidth:I

    .line 598
    move/from16 v10, p4

    iput v10, v0, Landroid/view/SurfaceControl;->mHeight:I

    .line 599
    nop

    .line 600
    const-wide/16 v14, 0x0

    if-eqz v12, :cond_1

    iget-wide v1, v12, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 599
    move-wide v7, v1

    goto :goto_0

    .line 600
    :cond_1
    nop

    .line 599
    move-wide v7, v14

    :goto_0
    move-object/from16 v1, p1

    move-object v2, v11

    move v3, v13

    move v4, v10

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v1 .. v10}, Landroid/view/SurfaceControl;->nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJII)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 601
    iget-wide v1, v0, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v1, v1, v14

    if-eqz v1, :cond_2

    .line 606
    iget-object v1, v0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "release"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 607
    return-void

    .line 602
    :cond_2
    new-instance v1, Landroid/view/Surface$OutOfResourcesException;

    const-string v2, "Couldn\'t allocate SurfaceControl native object"

    invoke-direct {v1, v2}, Landroid/view/Surface$OutOfResourcesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 584
    :cond_3
    move/from16 v13, p3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "name must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 581
    :cond_4
    move/from16 v13, p3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "session must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;IILandroid/view/SurfaceControl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/SurfaceSession;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Landroid/view/SurfaceControl;
    .param p8, "x7"    # I
    .param p9, "x8"    # I
    .param p10, "x9"    # Landroid/view/SurfaceControl$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 60
    invoke-direct/range {p0 .. p9}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;II)V

    return-void
.end method

.method static synthetic access$1000(JJFF)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # F
    .param p5, "x3"    # F

    .line 60
    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetPosition(JJFF)V

    return-void
.end method

.method static synthetic access$1100(JJII)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # I
    .param p5, "x3"    # I

    .line 60
    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetSize(JJII)V

    return-void
.end method

.method static synthetic access$1200(JJI)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # I

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetLayer(JJI)V

    return-void
.end method

.method static synthetic access$1300(JJLandroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # Landroid/os/IBinder;
    .param p5, "x3"    # I

    .line 60
    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetRelativeLayer(JJLandroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$1400(JJLandroid/graphics/Region;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # Landroid/graphics/Region;

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V

    return-void
.end method

.method static synthetic access$1500(JJF)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # F

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetAlpha(JJF)V

    return-void
.end method

.method static synthetic access$1600(JJFFFF)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # F
    .param p5, "x3"    # F
    .param p6, "x4"    # F
    .param p7, "x5"    # F

    .line 60
    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetMatrix(JJFFFF)V

    return-void
.end method

.method static synthetic access$1700(JJIIII)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I
    .param p7, "x5"    # I

    .line 60
    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(JJIIII)V

    return-void
.end method

.method static synthetic access$1800(JJIIII)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I
    .param p7, "x5"    # I

    .line 60
    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetFinalCrop(JJIIII)V

    return-void
.end method

.method static synthetic access$1900(JJI)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # I

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetLayerStack(JJI)V

    return-void
.end method

.method static synthetic access$200()J
    .locals 2

    .line 60
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetNativeTransactionFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2000(JJLandroid/os/IBinder;J)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # Landroid/os/IBinder;
    .param p5, "x3"    # J

    .line 60
    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeDeferTransactionUntil(JJLandroid/os/IBinder;J)V

    return-void
.end method

.method static synthetic access$2100(JJJJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # J

    .line 60
    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeDeferTransactionUntilSurface(JJJJ)V

    return-void
.end method

.method static synthetic access$2200(JJLandroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # Landroid/os/IBinder;

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeReparentChildren(JJLandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2300(JJLandroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # Landroid/os/IBinder;

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeReparent(JJLandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2400(JJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 60
    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSeverChildren(JJ)V

    return-void
.end method

.method static synthetic access$2500(JJI)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # I

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetOverrideScalingMode(JJI)V

    return-void
.end method

.method static synthetic access$2600(JJ[F)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # [F

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetColor(JJ[F)V

    return-void
.end method

.method static synthetic access$2700(JJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 60
    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetGeometryAppliesWithResize(JJ)V

    return-void
.end method

.method static synthetic access$2800(Landroid/view/SurfaceControl;)Ldalvik/system/CloseGuard;
    .locals 1
    .param p0, "x0"    # Landroid/view/SurfaceControl;

    .line 60
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    return-object v0
.end method

.method static synthetic access$2900(JJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 60
    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeDestroy(JJ)V

    return-void
.end method

.method static synthetic access$300()J
    .locals 2

    .line 60
    invoke-static {}, Landroid/view/SurfaceControl;->nativeCreateTransaction()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3000(JLandroid/os/IBinder;J)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # J

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(JLandroid/os/IBinder;J)V

    return-void
.end method

.method static synthetic access$3100(JLandroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # I

    .line 60
    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$3200(JLandroid/os/IBinder;IIIIIIIII)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # I
    .param p9, "x8"    # I
    .param p10, "x9"    # I
    .param p11, "x10"    # I

    .line 60
    invoke-static/range {p0 .. p11}, Landroid/view/SurfaceControl;->nativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V

    return-void
.end method

.method static synthetic access$3300(JLandroid/os/IBinder;II)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplaySize(JLandroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic access$3400(J)V
    .locals 0
    .param p0, "x0"    # J

    .line 60
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetAnimationTransaction(J)V

    return-void
.end method

.method static synthetic access$3500(J)V
    .locals 0
    .param p0, "x0"    # J

    .line 60
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetEarlyWakeup(J)V

    return-void
.end method

.method static synthetic access$3600(JJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 60
    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeMergeTransaction(JJ)V

    return-void
.end method

.method static synthetic access$400(JZ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Z

    .line 60
    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeApplyTransaction(JZ)V

    return-void
.end method

.method static synthetic access$500(Landroid/view/SurfaceControl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/view/SurfaceControl;

    .line 60
    iget-object v0, p0, Landroid/view/SurfaceControl;->mSizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Landroid/view/SurfaceControl;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/SurfaceControl;
    .param p1, "x1"    # I

    .line 60
    iput p1, p0, Landroid/view/SurfaceControl;->mWidth:I

    return p1
.end method

.method static synthetic access$702(Landroid/view/SurfaceControl;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/SurfaceControl;
    .param p1, "x1"    # I

    .line 60
    iput p1, p0, Landroid/view/SurfaceControl;->mHeight:I

    return p1
.end method

.method static synthetic access$800(Landroid/view/SurfaceControl;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/SurfaceControl;

    .line 60
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    return-void
.end method

.method static synthetic access$900(JJII)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # I
    .param p5, "x3"    # I

    .line 60
    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetFlags(JJII)V

    return-void
.end method

.method public static captureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/graphics/GraphicBuffer;
    .locals 1
    .param p0, "layerHandleToken"    # Landroid/os/IBinder;
    .param p1, "sourceCrop"    # Landroid/graphics/Rect;
    .param p2, "frameScale"    # F

    .line 1334
    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeCaptureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method private checkNotReleased()V
    .locals 4

    .line 722
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 724
    return-void

    .line 722
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mNativeObject is null. Have you called release() already?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clearAnimationFrameStats()Z
    .locals 1

    .line 890
    invoke-static {}, Landroid/view/SurfaceControl;->nativeClearAnimationFrameStats()Z

    move-result v0

    return v0
.end method

.method public static closeTransaction()V
    .locals 1

    .line 769
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/SurfaceControl;->closeTransaction(Z)V

    .line 770
    return-void
.end method

.method private static closeTransaction(Z)V
    .locals 7
    .param p0, "sync"    # Z

    .line 744
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 745
    :try_start_0
    sget-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 746
    const-string v1, "SurfaceControl"

    const-string v2, "Call to SurfaceControl.closeTransaction without matching openTransaction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 747
    :cond_0
    sget-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    sput-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 748
    monitor-exit v0

    return-void

    .line 750
    :cond_1
    :goto_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 751
    monitor-exit v0

    .line 752
    return-void

    .line 751
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static closeTransactionSync()V
    .locals 1

    .line 773
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/view/SurfaceControl;->closeTransaction(Z)V

    .line 774
    return-void
.end method

.method public static createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "secure"    # Z

    .line 1143
    if-eqz p0, :cond_0

    .line 1146
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 1144
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static destroyDisplay(Landroid/os/IBinder;)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 1150
    if-eqz p0, :cond_0

    .line 1153
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeDestroyDisplay(Landroid/os/IBinder;)V

    .line 1154
    return-void

    .line 1151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActiveColorMode(Landroid/os/IBinder;)I
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 1096
    if-eqz p0, :cond_0

    .line 1099
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetActiveColorMode(Landroid/os/IBinder;)I

    move-result v0

    return v0

    .line 1097
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActiveConfig(Landroid/os/IBinder;)I
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 1075
    if-eqz p0, :cond_0

    .line 1078
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetActiveConfig(Landroid/os/IBinder;)I

    move-result v0

    return v0

    .line 1076
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    .locals 1
    .param p0, "outStats"    # Landroid/view/WindowAnimationFrameStats;

    .line 894
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z

    move-result v0

    return v0
.end method

.method public static getBuiltInDisplay(I)Landroid/os/IBinder;
    .locals 1
    .param p0, "builtInDisplayId"    # I

    .line 1157
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayColorModes(Landroid/os/IBinder;)[I
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 1089
    if-eqz p0, :cond_0

    .line 1092
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayColorModes(Landroid/os/IBinder;)[I

    move-result-object v0

    return-object v0

    .line 1090
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 1068
    if-eqz p0, :cond_0

    .line 1071
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    move-result-object v0

    return-object v0

    .line 1069
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 1136
    if-eqz p0, :cond_0

    .line 1139
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;

    move-result-object v0

    return-object v0

    .line 1137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 762
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 763
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 764
    monitor-exit v0

    .line 765
    return-void

    .line 764
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static native nativeApplyTransaction(JZ)V
.end method

.method private static native nativeCaptureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/graphics/GraphicBuffer;
.end method

.method private static native nativeClearAnimationFrameStats()Z
.end method

.method private static native nativeClearContentFrameStats(J)Z
.end method

.method private static native nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJII)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
.end method

.method private static native nativeCreateTransaction()J
.end method

.method private static native nativeDeferTransactionUntil(JJLandroid/os/IBinder;J)V
.end method

.method private static native nativeDeferTransactionUntilSurface(JJJJ)V
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeDestroy(JJ)V
.end method

.method private static native nativeDestroyDisplay(Landroid/os/IBinder;)V
.end method

.method private static native nativeDisconnect(J)V
.end method

.method private static native nativeGetActiveColorMode(Landroid/os/IBinder;)I
.end method

.method private static native nativeGetActiveConfig(Landroid/os/IBinder;)I
.end method

.method private static native nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
.end method

.method private static native nativeGetBuiltInDisplay(I)Landroid/os/IBinder;
.end method

.method private static native nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z
.end method

.method private static native nativeGetDisplayColorModes(Landroid/os/IBinder;)[I
.end method

.method private static native nativeGetDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
.end method

.method private static native nativeGetHandle(J)Landroid/os/IBinder;
.end method

.method private static native nativeGetHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;
.end method

.method private static native nativeGetNativeTransactionFinalizer()J
.end method

.method private static native nativeGetTransformToDisplayInverse(J)Z
.end method

.method private static native nativeMergeTransaction(JJ)V
.end method

.method private static native nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeReparent(JJLandroid/os/IBinder;)V
.end method

.method private static native nativeReparentChildren(JJLandroid/os/IBinder;)V
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V
.end method

.method private static native nativeScreenshotToBuffer(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/GraphicBuffer;
.end method

.method private static native nativeSetActiveColorMode(Landroid/os/IBinder;I)Z
.end method

.method private static native nativeSetActiveConfig(Landroid/os/IBinder;I)Z
.end method

.method private static native nativeSetAlpha(JJF)V
.end method

.method private static native nativeSetAnimationTransaction(J)V
.end method

.method private static native nativeSetColor(JJ[F)V
.end method

.method private static native nativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V
.end method

.method private static native nativeSetDisplaySize(JLandroid/os/IBinder;II)V
.end method

.method private static native nativeSetDisplaySurface(JLandroid/os/IBinder;J)V
.end method

.method private static native nativeSetEarlyWakeup(J)V
.end method

.method private static native nativeSetFinalCrop(JJIIII)V
.end method

.method private static native nativeSetFlags(JJII)V
.end method

.method private static native nativeSetGeometryAppliesWithResize(JJ)V
.end method

.method private static native nativeSetLayer(JJI)V
.end method

.method private static native nativeSetLayerStack(JJI)V
.end method

.method private static native nativeSetMatrix(JJFFFF)V
.end method

.method private static native nativeSetOverrideScalingMode(JJI)V
.end method

.method private static native nativeSetPosition(JJFF)V
.end method

.method private static native nativeSetRelativeLayer(JJLandroid/os/IBinder;I)V
.end method

.method private static native nativeSetSize(JJII)V
.end method

.method private static native nativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V
.end method

.method private static native nativeSetWindowCrop(JJIIII)V
.end method

.method private static native nativeSeverChildren(JJ)V
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method public static openTransaction()V
    .locals 6

    .line 733
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 734
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    if-nez v1, :cond_0

    .line 735
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    sput-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 737
    :cond_0
    const-class v1, Landroid/view/SurfaceControl;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 738
    :try_start_1
    sget-wide v2, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    .line 739
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 740
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 741
    return-void

    .line 739
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 740
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private static rotateCropForSF(Landroid/graphics/Rect;I)V
    .locals 2
    .param p0, "crop"    # Landroid/graphics/Rect;
    .param p1, "rot"    # I

    .line 1311
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1312
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 1313
    .local v0, "tmp":I
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 1314
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 1315
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 1316
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 1317
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 1319
    .end local v0    # "tmp":I
    :cond_1
    return-void
.end method

.method public static screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotation"    # I

    .line 1286
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 1288
    .local v0, "displayToken":Landroid/os/IBinder;
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_0

    if-ne p3, v1, :cond_2

    .line 1289
    :cond_0
    if-ne p3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move p3, v1

    .line 1292
    :cond_2
    invoke-static {p0, p3}, Landroid/view/SurfaceControl;->rotateCropForSF(Landroid/graphics/Rect;I)V

    .line 1293
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v9, p3

    invoke-static/range {v1 .. v9}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minLayer"    # I
    .param p4, "maxLayer"    # I
    .param p5, "useIdentityTransform"    # Z
    .param p6, "rotation"    # I

    .line 1245
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 1247
    .local v0, "displayToken":Landroid/os/IBinder;
    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v8, p5

    move/from16 v9, p6

    invoke-static/range {v1 .. v9}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 9
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;

    .line 1206
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 1207
    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;II)V
    .locals 9
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1196
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 1197
    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V
    .locals 9
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "minLayer"    # I
    .param p5, "maxLayer"    # I
    .param p6, "useIdentityTransform"    # Z

    .line 1180
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 1182
    return-void
.end method

.method private static screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V
    .locals 2
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "sourceCrop"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "minLayer"    # I
    .param p6, "maxLayer"    # I
    .param p7, "allLayers"    # Z
    .param p8, "useIdentityTransform"    # Z

    .line 1300
    if-eqz p0, :cond_1

    .line 1303
    if-eqz p1, :cond_0

    .line 1306
    invoke-static/range {p0 .. p8}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 1308
    return-void

    .line 1304
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "consumer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1301
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static screenshotToBuffer(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/GraphicBuffer;
    .locals 10
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minLayer"    # I
    .param p4, "maxLayer"    # I
    .param p5, "useIdentityTransform"    # Z
    .param p6, "rotation"    # I

    .line 1258
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 1260
    .local v0, "displayToken":Landroid/os/IBinder;
    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v8, p5

    move/from16 v9, p6

    invoke-static/range {v1 .. v9}, Landroid/view/SurfaceControl;->nativeScreenshotToBuffer(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/GraphicBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static setActiveColorMode(Landroid/os/IBinder;I)Z
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "colorMode"    # I

    .line 1103
    if-eqz p0, :cond_0

    .line 1106
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetActiveColorMode(Landroid/os/IBinder;I)Z

    move-result v0

    return v0

    .line 1104
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setActiveConfig(Landroid/os/IBinder;I)Z
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "id"    # I

    .line 1082
    if-eqz p0, :cond_0

    .line 1085
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetActiveConfig(Landroid/os/IBinder;I)Z

    move-result v0

    return v0

    .line 1083
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setAnimationTransaction()V
    .locals 2

    .line 818
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 819
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 820
    monitor-exit v0

    .line 821
    return-void

    .line 820
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setDisplayLayerStack(Landroid/os/IBinder;I)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "layerStack"    # I

    .line 1118
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 1119
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setDisplayLayerStack(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;

    .line 1120
    monitor-exit v0

    .line 1121
    return-void

    .line 1120
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setDisplayPowerMode(Landroid/os/IBinder;I)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "mode"    # I

    .line 1061
    if-eqz p0, :cond_0

    .line 1064
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 1065
    return-void

    .line 1062
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "orientation"    # I
    .param p2, "layerStackRect"    # Landroid/graphics/Rect;
    .param p3, "displayRect"    # Landroid/graphics/Rect;

    .line 1111
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 1112
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 1114
    monitor-exit v0

    .line 1115
    return-void

    .line 1114
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setDisplaySize(Landroid/os/IBinder;II)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1130
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 1131
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;

    .line 1132
    monitor-exit v0

    .line 1133
    return-void

    .line 1132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1124
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 1125
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;

    .line 1126
    monitor-exit v0

    .line 1127
    return-void

    .line 1126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public clearContentFrameStats()Z
    .locals 2

    .line 880
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 881
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeClearContentFrameStats(J)Z

    move-result v0

    return v0
.end method

.method public deferTransactionUntil(Landroid/os/IBinder;J)V
    .locals 2
    .param p1, "handle"    # Landroid/os/IBinder;
    .param p2, "frame"    # J

    .line 777
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 778
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/os/IBinder;J)Landroid/view/SurfaceControl$Transaction;

    .line 779
    monitor-exit v0

    .line 780
    return-void

    .line 779
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deferTransactionUntil(Landroid/view/Surface;J)V
    .locals 2
    .param p1, "barrier"    # Landroid/view/Surface;
    .param p2, "frame"    # J

    .line 783
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 784
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntilSurface(Landroid/view/SurfaceControl;Landroid/view/Surface;J)Landroid/view/SurfaceControl$Transaction;

    .line 785
    monitor-exit v0

    .line 786
    return-void

    .line 785
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public describeContents()I
    .locals 1

    .line 635
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 4

    .line 705
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 706
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeDestroy(J)V

    .line 707
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 709
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 710
    return-void
.end method

.method public detachChildren()V
    .locals 2

    .line 801
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 802
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->detachChildren(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 803
    monitor-exit v0

    .line 804
    return-void

    .line 803
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnect()V
    .locals 4

    .line 716
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 717
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeDisconnect(J)V

    .line 719
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 675
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 678
    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 679
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRelease(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 683
    nop

    .line 684
    return-void

    .line 682
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .locals 2
    .param p1, "outStats"    # Landroid/view/WindowContentFrameStats;

    .line 885
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 886
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z

    move-result v0

    return v0
.end method

.method public getHandle()Landroid/os/IBinder;
    .locals 2

    .line 814
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeGetHandle(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .line 978
    iget-object v0, p0, Landroid/view/SurfaceControl;->mSizeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 979
    :try_start_0
    iget v1, p0, Landroid/view/SurfaceControl;->mHeight:I

    monitor-exit v0

    return v1

    .line 980
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWidth()I
    .locals 2

    .line 972
    iget-object v0, p0, Landroid/view/SurfaceControl;->mSizeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 973
    :try_start_0
    iget v1, p0, Landroid/view/SurfaceControl;->mWidth:I

    monitor-exit v0

    return v1

    .line 974
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hide()V
    .locals 2

    .line 859
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 860
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 861
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 862
    monitor-exit v0

    .line 863
    return-void

    .line 862
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 4

    .line 692
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 693
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRelease(J)V

    .line 694
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 696
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 697
    return-void
.end method

.method public reparent(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "newParentHandle"    # Landroid/os/IBinder;

    .line 795
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 796
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

    .line 797
    monitor-exit v0

    .line 798
    return-void

    .line 797
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reparentChildren(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "newParentHandle"    # Landroid/os/IBinder;

    .line 789
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 790
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->reparentChildren(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

    .line 791
    monitor-exit v0

    .line 792
    return-void

    .line 791
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .line 898
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 899
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 900
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 901
    monitor-exit v0

    .line 902
    return-void

    .line 901
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setColor([F)V
    .locals 2
    .param p1, "color"    # [F

    .line 905
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 906
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 907
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 908
    monitor-exit v0

    .line 909
    return-void

    .line 908
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "crop"    # Landroid/graphics/Rect;

    .line 942
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 943
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 944
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setFinalCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 945
    monitor-exit v0

    .line 946
    return-void

    .line 945
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setGeometryAppliesWithResize()V
    .locals 2

    .line 845
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 846
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 847
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->setGeometryAppliesWithResize(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 848
    monitor-exit v0

    .line 849
    return-void

    .line 848
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLayer(I)V
    .locals 2
    .param p1, "zorder"    # I

    .line 824
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 825
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 826
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 827
    monitor-exit v0

    .line 828
    return-void

    .line 827
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLayerStack(I)V
    .locals 2
    .param p1, "layerStack"    # I

    .line 949
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 950
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 951
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 952
    monitor-exit v0

    .line 953
    return-void

    .line 952
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMatrix(FFFF)V
    .locals 7
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dtdy"    # F
    .param p4, "dsdy"    # F

    .line 912
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 913
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 914
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 915
    monitor-exit v0

    .line 916
    return-void

    .line 915
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMatrix(Landroid/graphics/Matrix;[F)V
    .locals 7
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "float9"    # [F

    .line 925
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 926
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 927
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 928
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x0

    aget v3, p2, v2

    const/4 v2, 0x3

    aget v4, p2, v2

    const/4 v2, 0x1

    aget v5, p2, v2

    const/4 v2, 0x4

    aget v6, p2, v2

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 930
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x5

    aget v3, p2, v3

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 931
    monitor-exit v0

    .line 932
    return-void

    .line 931
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOpaque(Z)V
    .locals 2
    .param p1, "isOpaque"    # Z

    .line 956
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 958
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 959
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 960
    monitor-exit v0

    .line 961
    return-void

    .line 960
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOverrideScalingMode(I)V
    .locals 2
    .param p1, "scalingMode"    # I

    .line 807
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 808
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 809
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setOverrideScalingMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 810
    monitor-exit v0

    .line 811
    return-void

    .line 810
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 838
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 839
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 840
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 841
    monitor-exit v0

    .line 842
    return-void

    .line 841
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRelativeLayer(Landroid/view/SurfaceControl;I)V
    .locals 2
    .param p1, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p2, "zorder"    # I

    .line 831
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 832
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 833
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 834
    monitor-exit v0

    .line 835
    return-void

    .line 834
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSecure(Z)V
    .locals 2
    .param p1, "isSecure"    # Z

    .line 964
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 966
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 967
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 968
    monitor-exit v0

    .line 969
    return-void

    .line 968
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSize(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 852
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 853
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 854
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 855
    monitor-exit v0

    .line 856
    return-void

    .line 855
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    .line 873
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 874
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 875
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setTransparentRegionHint(Landroid/view/SurfaceControl;Landroid/graphics/Region;)Landroid/view/SurfaceControl$Transaction;

    .line 876
    monitor-exit v0

    .line 877
    return-void

    .line 876
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "crop"    # Landroid/graphics/Rect;

    .line 935
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 936
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 937
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 938
    monitor-exit v0

    .line 939
    return-void

    .line 938
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public show()V
    .locals 2

    .line 866
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 867
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 868
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 869
    monitor-exit v0

    .line 870
    return-void

    .line 869
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")/@0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 985
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 640
    iget-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 641
    iget v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    iget v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 644
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 655
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 656
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 657
    iget-object v2, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 658
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 659
    return-void
.end method
