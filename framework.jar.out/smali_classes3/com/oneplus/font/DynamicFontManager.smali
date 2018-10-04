.class public Lcom/oneplus/font/DynamicFontManager;
.super Ljava/lang/Object;
.source "DynamicFontManager.java"


# static fields
.field public static final FONTS_ORIGIN_CONFIG:Ljava/lang/String; = "fonts.xml"

.field public static final FONTS_SLATE_CONFIG:Ljava/lang/String; = "fonts_slate.xml"

.field public static final ONEPLUS_FONT_ORIGIN:I = 0x1

.field public static final ONEPLUS_FONT_SLATE:I = 0x2

.field private static final PROP_FONT_ID:Ljava/lang/String; = "persist.sys.font"

.field private static final TAG:Ljava/lang/String; = "DynamicFontManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFontId()I
    .locals 4

    const/4 v0, 0x1

    move v1, v0

    :try_start_0
    const-string v2, "persist.sys.font"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "DynamicFontManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method
