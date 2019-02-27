.class Landroid/provider/Settings$Secure$2;
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    array-length v3, v1

    move v4, v2

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v1, v2

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v7, v8, :cond_1

    aget-object v7, v6, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    sget-object v7, Landroid/provider/SettingsValidators;->ANY_STRING_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    aget-object v8, v6, v0

    invoke-interface {v7, v8}, Landroid/provider/SettingsValidators$Validator;->validate(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Landroid/provider/SettingsValidators;->LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    aget-object v8, v6, v9

    invoke-interface {v7, v8}, Landroid/provider/SettingsValidators$Validator;->validate(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v9, v0

    :goto_1
    or-int/2addr v4, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v4

    :cond_3
    :goto_2
    return v0
.end method
