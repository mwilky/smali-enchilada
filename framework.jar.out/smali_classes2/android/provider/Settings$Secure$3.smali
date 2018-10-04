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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

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

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method
