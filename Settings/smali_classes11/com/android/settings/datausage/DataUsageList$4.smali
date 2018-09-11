.class Lcom/android/settings/datausage/DataUsageList$4;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageList;->bindStats(Landroid/net/NetworkStats;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 478
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 481
    move-object v0, p1

    check-cast v0, Lcom/android/settings/datausage/AppDataUsagePreference;

    .line 482
    .local v0, "pref":Lcom/android/settings/datausage/AppDataUsagePreference;
    invoke-virtual {v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->getItem()Lcom/android/settingslib/AppItem;

    move-result-object v1

    .line 484
    .local v1, "item":Lcom/android/settingslib/AppItem;
    iget v2, v1, Lcom/android/settingslib/AppItem;->key:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    iget v2, v1, Lcom/android/settingslib/AppItem;->key:I

    const/4 v3, -0x4

    if-ne v2, v3, :cond_1

    .line 485
    :cond_0
    new-instance v2, Lcom/android/settingslib/net/UidDetail;

    invoke-direct {v2}, Lcom/android/settingslib/net/UidDetail;-><init>()V

    sput-object v2, Lcom/android/settings/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settingslib/net/UidDetail;

    .line 486
    sget-object v2, Lcom/android/settings/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settingslib/net/UidDetail;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 487
    sget-object v2, Lcom/android/settings/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settingslib/net/UidDetail;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 490
    :cond_1
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v2, v1}, Lcom/android/settings/datausage/DataUsageList;->access$300(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settingslib/AppItem;)V

    .line 491
    const/4 v2, 0x1

    return v2
.end method
