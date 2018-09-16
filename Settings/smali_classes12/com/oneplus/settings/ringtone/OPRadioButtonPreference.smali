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
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->initViews()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->initViews()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->initViews()V

    .line 31
    return-void
.end method

.method private initViews()V
    .locals 1

    .line 34
    const v0, 0x7f0d0206

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setWidgetLayoutResource(I)V

    .line 38
    return-void
.end method

.method private setCanRecycleLayout(Z)V
    .locals 2
    .param p1, "bCanRecycle"    # Z

    .line 67
    :try_start_0
    const-class v0, Landroid/preference/Preference;

    const-string v1, "mCanRecycleLayout"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 68
    .local v0, "canRecycleLayoutField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 69
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "canRecycleLayoutField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 70
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 74
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    nop

    .line 75
    :goto_1
    return-void
.end method


# virtual methods
.method public getData()Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->mData:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;

    return-object v0
.end method

.method protected onClick()V
    .locals 0

    .line 43
    return-void
.end method

.method public setData(Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;)V
    .locals 0
    .param p1, "data"    # Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;

    .line 46
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->mData:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;

    .line 47
    return-void
.end method
