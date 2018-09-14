.class Lcom/android/settings/notification/SoundSettings$SummaryProvider;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 878
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 879
    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 880
    iput-object p2, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 885
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 924
    return-void
.end method

.method public setListening(Z)V
    .locals 8
    .param p1, "listening"    # Z

    .line 890
    if-eqz p1, :cond_0

    .line 891
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f120d48

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, "summary":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f120aec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 894
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 896
    .local v1, "earphoneModeSummary":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v1, v4, v6

    const v7, 0x7f120783

    invoke-virtual {v2, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 899
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v4, 0x7f120ce2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 900
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 901
    .local v2, "vibrateSummary":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v2, v3, v6

    invoke-virtual {v4, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 904
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v3, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 916
    .end local v0    # "summary":Ljava/lang/String;
    .end local v1    # "earphoneModeSummary":Ljava/lang/String;
    .end local v2    # "vibrateSummary":Ljava/lang/String;
    :cond_0
    return-void
.end method