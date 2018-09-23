.class public Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
.super Landroid/preference/CheckBoxPreference;
.source "OPRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;
    }
.end annotation


# instance fields
.field private mData:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->initViews()V

    return-void
.end method

.method private initViews()V
    .locals 1

    const v0, 0x7f0d0205

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private setCanRecycleLayout(Z)V
    .locals 2

    :try_start_0
    const-class v0, Landroid/preference/Preference;

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
.method public getData()Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->mData:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;

    return-object v0
.end method

.method protected onClick()V
    .locals 0

    return-void
.end method

.method public setData(Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->mData:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;

    return-void
.end method
