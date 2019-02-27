.class Landroid/provider/Settings$Secure$3;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/SettingsValidators$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings$Secure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/String;

    .line 8478
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 8479
    return v0

    .line 8481
    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8482
    .local v1, "tiles":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 8483
    .local v2, "valid":Z
    array-length v3, v1

    move v4, v2

    move v2, v0

    .end local v2    # "valid":Z
    .local v4, "valid":Z
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v1, v2

    .line 8485
    .local v5, "tile":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    sget-object v6, Landroid/provider/SettingsValidators;->ANY_STRING_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v6, v5}, Landroid/provider/SettingsValidators$Validator;->validate(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    or-int/2addr v4, v6

    .line 8483
    .end local v5    # "tile":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8487
    :cond_2
    return v4
.end method
