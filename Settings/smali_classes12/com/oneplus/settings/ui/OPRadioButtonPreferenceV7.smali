.class public Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;
.super Landroid/support/v7/preference/CheckBoxPreference;
.source "OPRadioButtonPreferenceV7.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->initViews()V

    return-void
.end method

.method private initViews()V
    .locals 1

    const v0, 0x7f0d0190

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->setLayoutResource(I)V

    const v0, 0x7f0d0205

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->setWidgetLayoutResource(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->setCanRecycleLayout(Z)V

    return-void
.end method

.method private setCanRecycleLayout(Z)V
    .locals 2

    :try_start_0
    const-class v0, Landroid/support/v7/preference/Preference;

    const-string v1, "mCanRecycleLayout"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    return-void
.end method
