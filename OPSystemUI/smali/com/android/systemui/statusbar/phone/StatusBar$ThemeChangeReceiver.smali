.class final Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThemeChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBar$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/OPUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const v2, 0x7f0603f7

    invoke-static {v1, v2}, Lcom/android/systemui/util/OPUtils;->getThemeAccentColor(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/OPUtils;->isSpecialTheme(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "StatusBar"

    const-string v4, "mThemeColor=0x%x, themeColor=0x%x, mAccentColor=0x%x, accentColor=0x%x, mSpecialTheme=%b, specialTheme=%b"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3500(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3600(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v3

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3500(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3600(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v3

    if-eq v3, v2, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3402(Lcom/android/systemui/statusbar/phone/StatusBar;I)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3602(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3502(Lcom/android/systemui/statusbar/phone/StatusBar;I)I

    invoke-static {p1}, Lcom/android/systemui/util/ThemeColorUtils;->init(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v3}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/fragments/FragmentHostManager;->onThemeColorUpdate()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3700(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3700(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->onThemeColorUpdate()V

    :cond_1
    return-void
.end method
