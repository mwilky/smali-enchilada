.class public final enum Landroid/graphics/Bitmap$Config;
.super Ljava/lang/Enum;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Bitmap$Config;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Bitmap$Config;

.field public static final enum ALPHA_8:Landroid/graphics/Bitmap$Config;

.field public static final enum ARGB_4444:Landroid/graphics/Bitmap$Config;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum ARGB_8888:Landroid/graphics/Bitmap$Config;

.field public static final enum HARDWARE:Landroid/graphics/Bitmap$Config;

.field public static final enum RGBA_F16:Landroid/graphics/Bitmap$Config;

.field public static final enum RGB_565:Landroid/graphics/Bitmap$Config;

.field private static sConfigs:[Landroid/graphics/Bitmap$Config;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 449
    new-instance v0, Landroid/graphics/Bitmap$Config;

    const-string v1, "ALPHA_8"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 470
    new-instance v0, Landroid/graphics/Bitmap$Config;

    const-string v1, "RGB_565"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v3, v4}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 491
    new-instance v0, Landroid/graphics/Bitmap$Config;

    const-string v1, "ARGB_4444"

    const/4 v5, 0x2

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 507
    new-instance v0, Landroid/graphics/Bitmap$Config;

    const-string v1, "ARGB_8888"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v4, v7}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 522
    new-instance v0, Landroid/graphics/Bitmap$Config;

    const-string v1, "RGBA_F16"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v6, v8}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    .line 531
    new-instance v0, Landroid/graphics/Bitmap$Config;

    const-string v1, "HARDWARE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v7, v9}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 440
    new-array v0, v8, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v5

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v6

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v7

    sput-object v0, Landroid/graphics/Bitmap$Config;->$VALUES:[Landroid/graphics/Bitmap$Config;

    .line 535
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    aput-object v2, v0, v3

    aput-object v1, v0, v5

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v6

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v7

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v8

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v9

    sput-object v0, Landroid/graphics/Bitmap$Config;->sConfigs:[Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "ni"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 539
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 540
    iput p3, p0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    .line 541
    return-void
.end method

.method static nativeToConfig(I)Landroid/graphics/Bitmap$Config;
    .locals 1
    .param p0, "ni"    # I

    .line 544
    sget-object v0, Landroid/graphics/Bitmap$Config;->sConfigs:[Landroid/graphics/Bitmap$Config;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 440
    const-class v0, Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public static values()[Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 440
    sget-object v0, Landroid/graphics/Bitmap$Config;->$VALUES:[Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, [Landroid/graphics/Bitmap$Config;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap$Config;

    return-object v0
.end method
