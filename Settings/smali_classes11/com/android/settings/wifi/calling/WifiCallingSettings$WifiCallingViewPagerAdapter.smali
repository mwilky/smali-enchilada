.class final Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "WifiCallingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/WifiCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiCallingViewPagerAdapter"
.end annotation


# instance fields
.field private final mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

.field final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettings;Landroid/app/FragmentManager;Lcom/android/settings/widget/RtlCompatibleViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    iput-object p3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->access$000(Lcom/android/settings/wifi/calling/WifiCallingSettings;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "WifiCallingSettings"

    const-string v1, "Adapter getCount null mSil "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "WifiCallingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adapter getCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->access$000(Lcom/android/settings/wifi/calling/WifiCallingSettings;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->access$000(Lcom/android/settings/wifi/calling/WifiCallingSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 3

    const-string v0, "WifiCallingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adapter getItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "need_search_icon_in_action_bar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "subId"

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->access$000(Lcom/android/settings/wifi/calling/WifiCallingSettings;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-direct {v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->access$000(Lcom/android/settings/wifi/calling/WifiCallingSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    const-string v0, "WifiCallingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adapter instantiateItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getRtlAwareIndex(I)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/support/v13/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
