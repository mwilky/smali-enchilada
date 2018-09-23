.class public Lcom/oneplus/settings/OPGestureAnswerSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPGestureAnswerSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final GESTURE_TO_ANSWER_CALL:Ljava/lang/String; = "gesture_answercall_switch"

.field private static final OPGUEST_ANSWER_CALL:Ljava/lang/String; = "opguest_answer_call"


# instance fields
.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mGestureAnswerCall:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private isGestureAnswerOn()Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureAnswerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "opguest_answer_call"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private setGestureAnswerOn(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureAnswerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "opguest_answer_call"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160081

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureAnswerSettings;->addPreferencesFromResource(I)V

    const-string v0, "gesture_answercall_switch"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureAnswerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mGestureAnswerCall:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mGestureAnswerCall:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureAnswerSettings;->isGestureAnswerOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mGestureAnswerCall:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureAnswerSettings;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mGestureAnswerCall:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPGestureAnswerSettings;->setGestureAnswerOn(Z)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
