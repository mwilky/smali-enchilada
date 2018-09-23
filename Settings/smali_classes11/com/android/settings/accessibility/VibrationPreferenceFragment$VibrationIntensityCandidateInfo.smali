.class Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "VibrationPreferenceFragment.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/VibrationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VibrationIntensityCandidateInfo"
.end annotation


# instance fields
.field private mIntensity:I

.field private mKey:Ljava/lang/String;

.field private mLabelId:I

.field final synthetic this$0:Lcom/android/settings/accessibility/VibrationPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->this$0:Lcom/android/settings/accessibility/VibrationPreferenceFragment;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    iput-object p2, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->mKey:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->mLabelId:I

    iput p4, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->mIntensity:I

    return-void
.end method


# virtual methods
.method public getIntensity()I
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->mIntensity:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->this$0:Lcom/android/settings/accessibility/VibrationPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->mLabelId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
