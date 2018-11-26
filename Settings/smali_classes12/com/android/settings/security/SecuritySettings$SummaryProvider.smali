.class Lcom/android/settings/security/SecuritySettings$SummaryProvider;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/SecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/security/SecuritySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 4

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/security/SecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/security/SecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportFaceUnlock(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/security/SecuritySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v2, p0, Lcom/android/settings/security/SecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v3, 0x7f120cb3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/security/SecuritySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v2, p0, Lcom/android/settings/security/SecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v3, 0x7f120cb4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/security/SecuritySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v2, p0, Lcom/android/settings/security/SecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v3, 0x7f120fa8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method
