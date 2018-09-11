.class public Lcom/oneplus/settings/defaultapp/DefaultAppConstants;
.super Ljava/lang/Object;
.source "DefaultAppConstants.java"


# static fields
.field public static final DEFAULTAPP_VALUE_LIST_H2OS:[Ljava/lang/String;

.field public static final DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

.field public static final DEFAULTAPP_VALUE_LIST_O2OS:[Ljava/lang/String;

.field public static final KEY_DEFAULT_APP_TYPE:Ljava/lang/String; = "default_app_type"

.field public static final POSITION_DEFAULT_APP_CAMERA:I = 0x0

.field public static final POSITION_DEFAULT_APP_EMAIL:I = 0x3

.field public static final POSITION_DEFAULT_APP_GALLERY:I = 0x1

.field public static final POSITION_DEFAULT_APP_MUSIC:I = 0x2

.field public static final POSITION_DEFAULT_APP_NONE:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    const-string v0, "op_default_app_camera"

    const-string v1, "op_default_app_gallery"

    const-string v2, "op_default_app_music"

    const-string v3, "op_default_app_email"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    .line 16
    const-string v0, "com.oneplus.camera"

    const-string v1, "com.oneplus.gallery"

    const-string v2, "com.netease.cloudmusic"

    const-string v3, "com.netease.mobimail.oneplus"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_H2OS:[Ljava/lang/String;

    .line 17
    const-string v0, "com.oneplus.camera"

    const-string v1, "com.oneplus.gallery"

    const-string v2, "net.oneplus.music"

    const-string v3, "com.google.android.gm"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_O2OS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
