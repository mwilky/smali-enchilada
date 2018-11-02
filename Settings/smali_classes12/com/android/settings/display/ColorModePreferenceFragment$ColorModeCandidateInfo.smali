.class Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "ColorModePreferenceFragment.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ColorModePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorModeCandidateInfo"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mLabel:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    iput-object p1, p0, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method
