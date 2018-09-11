.class Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "ConfigureNotificationSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ConfigureNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SummaryProvider"
.end annotation


# instance fields
.field private mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 169
    iput-object p2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 170
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 171
    return-void
.end method


# virtual methods
.method protected setBackend(Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0
    .param p1, "backend"    # Lcom/android/settings/notification/NotificationBackend;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 176
    return-void
.end method

.method public setListening(Z)V
    .locals 7
    .param p1, "listening"    # Z

    .line 180
    if-nez p1, :cond_0

    .line 181
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationBackend;->getBlockedAppCount()I

    move-result v0

    .line 184
    .local v0, "blockedAppCount":I
    if-nez v0, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v3, 0x7f120157

    .line 186
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 185
    invoke-virtual {v1, p0, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 189
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100008

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 189
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v1, p0, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 193
    :goto_0
    return-void
.end method
