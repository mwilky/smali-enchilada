.class public Lcom/android/settings/display/VrDisplayPreferencePicker;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "VrDisplayPreferencePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;
    }
.end annotation


# static fields
.field static final PREF_KEY_PREFIX:Ljava/lang/String; = "vr_display_pref_"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/display/VrDisplayPreferencePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;

    const/4 v3, 0x0

    const v4, 0x7f12058b

    invoke-direct {v2, v1, v3, v4}, Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;

    const/4 v3, 0x1

    const v4, 0x7f12058c

    invoke-direct {v2, v1, v3, v4}, Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/display/VrDisplayPreferencePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vr_display_mode"

    iget v2, p0, Lcom/android/settings/display/VrDisplayPreferencePicker;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vr_display_pref_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x399

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1600da

    return v0
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "vr_display_pref_1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v3

    goto :goto_0

    :pswitch_1
    const-string v2, "vr_display_pref_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_1

    return v1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/display/VrDisplayPreferencePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vr_display_mode"

    iget v2, p0, Lcom/android/settings/display/VrDisplayPreferencePicker;->mUserId:I

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/display/VrDisplayPreferencePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "vr_display_mode"

    iget v3, p0, Lcom/android/settings/display/VrDisplayPreferencePicker;->mUserId:I

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5e462714
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
