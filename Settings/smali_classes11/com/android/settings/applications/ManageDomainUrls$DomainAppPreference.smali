.class Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;
.super Lcom/android/settings/widget/AppPreference;
.source "ManageDomainUrls.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageDomainUrls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DomainAppPreference"
.end annotation


# instance fields
.field private final mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private final mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mPm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setState()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    return-object v0
.end method

.method private getDomainsSummary(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x7f1205b0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v2, p1}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f1205b1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f1205b2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setState()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->getDomainsSummary(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference$1;-><init>(Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/widget/AppPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public reuse()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setState()V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->notifyChanged()V

    return-void
.end method
