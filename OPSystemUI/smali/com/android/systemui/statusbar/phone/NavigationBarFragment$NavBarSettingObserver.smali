.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;
.super Landroid/database/ContentObserver;
.source "NavigationBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavBarSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "NavigationBar"

    const-string v1, "mNavBarSettingObserver onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$800(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/OverviewProxyService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$800(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/OverviewProxyService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "op_navigation_bar_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "op_gesture_button_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonState(Z)V

    :cond_4
    if-nez v3, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "systemui_navigation_bar_hided"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$302(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)Z

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "systemui_navigation_bar_hided"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_6

    move v1, v2

    nop

    :cond_6
    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$302(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)Z

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$500(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$300(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->onHideNavBar(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$300(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setHideNavBarOn(Z)V

    :cond_7
    return-void
.end method
