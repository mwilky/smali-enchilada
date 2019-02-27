.class Landroid/provider/Settings$Global$3;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/SettingsValidators$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings$Global;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 11
    .param p1, "value"    # Ljava/lang/String;

    .line 12240
    const/4 v0, 0x0

    :try_start_0
    const-string v1, ","

    invoke-static {p1, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 12241
    .local v1, "surroundFormats":[Ljava/lang/String;
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 12242
    .local v4, "format":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 12243
    .local v5, "audioFormat":I
    const/4 v6, 0x0

    .line 12244
    .local v6, "isSurroundFormat":Z
    sget-object v7, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    array-length v8, v7

    move v9, v0

    :goto_1
    if-ge v9, v8, :cond_1

    aget v10, v7, v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12245
    .local v10, "sf":I
    if-ne v10, v5, :cond_0

    .line 12246
    const/4 v6, 0x1

    .line 12247
    goto :goto_2

    .line 12244
    .end local v10    # "sf":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 12250
    :cond_1
    :goto_2
    if-nez v6, :cond_2

    .line 12251
    return v0

    .line 12241
    .end local v4    # "format":Ljava/lang/String;
    .end local v5    # "audioFormat":I
    .end local v6    # "isSurroundFormat":Z
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12254
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 12255
    .end local v1    # "surroundFormats":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 12256
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0
.end method
