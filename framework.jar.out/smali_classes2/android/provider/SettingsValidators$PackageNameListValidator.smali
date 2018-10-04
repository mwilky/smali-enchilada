.class public final Landroid/provider/SettingsValidators$PackageNameListValidator;
.super Ljava/lang/Object;
.source "SettingsValidators.java"

# interfaces
.implements Landroid/provider/SettingsValidators$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SettingsValidators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageNameListValidator"
.end annotation


# instance fields
.field private final mSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/SettingsValidators$PackageNameListValidator;->mSeparator:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/provider/SettingsValidators$PackageNameListValidator;->mSeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    sget-object v5, Landroid/provider/SettingsValidators;->PACKAGE_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v5, v4}, Landroid/provider/SettingsValidators$Validator;->validate(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
