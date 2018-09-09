.class final Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateInputForAllWindowsConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# instance fields
.field inDrag:Z

.field navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field final synthetic this$0:Lcom/android/server/wm/InputMonitor;

.field wallpaperController:Lcom/android/server/wm/WallpaperController;

.field wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/InputMonitor;
    .param p2, "x1"    # Lcom/android/server/wm/InputMonitor$1;

    .line 612
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;-><init>(Lcom/android/server/wm/InputMonitor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;
    .param p1, "x1"    # Z

    .line 612
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->updateInputWindows(Z)V

    return-void
.end method

.method private updateInputWindows(Z)V
    .locals 4
    .param p1, "inDrag"    # Z

    .line 624
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string/jumbo v1, "nav_input_consumer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;I)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 625
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string/jumbo v1, "pip_input_consumer"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;I)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 626
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string/jumbo v1, "wallpaper_input_consumer"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;I)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 627
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string/jumbo v1, "recents_animation_input_consumer"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;I)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 629
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/wm/InputMonitor;->access$202(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 630
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v0, v1}, Lcom/android/server/wm/InputMonitor;->access$302(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 631
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-static {v0, v1}, Lcom/android/server/wm/InputMonitor;->access$402(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 632
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-static {v0, v1}, Lcom/android/server/wm/InputMonitor;->access$502(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 633
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$600(Lcom/android/server/wm/InputMonitor;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 634
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v0, v2}, Lcom/android/server/wm/InputMonitor;->access$702(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 635
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->inDrag:Z

    .line 636
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$800(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 638
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$800(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p0, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 639
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 641
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v1, v1, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {v0, v1}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;Lcom/android/server/input/InputWindowHandle;)V

    .line 645
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$800(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$1000(Lcom/android/server/wm/InputMonitor;)[Lcom/android/server/input/InputWindowHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$1100(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/input/InputWindowHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;Lcom/android/server/input/InputWindowHandle;)V

    .line 647
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$1200(Lcom/android/server/wm/InputMonitor;)V

    .line 648
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/WindowState;)V
    .locals 17
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    .line 652
    move-object/from16 v9, p1

    iget-object v10, v9, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 653
    .local v10, "inputChannel":Landroid/view/InputChannel;
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 654
    .local v11, "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v10, :cond_b

    if-eqz v11, :cond_b

    iget-boolean v1, v9, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v1, :cond_b

    .line 655
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 660
    :cond_0
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 661
    .local v12, "flags":I
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 662
    .local v13, "privateFlags":I
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 663
    .local v14, "type":I
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$1300(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v9, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    move v15, v1

    .line 664
    .local v15, "hasFocus":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v16

    .line 666
    .local v16, "isVisible":Z
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$500(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 667
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 668
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$800(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    .line 669
    .local v1, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v1, :cond_3

    iget-object v4, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 670
    invoke-virtual {v1, v4}, Lcom/android/server/wm/RecentsAnimationController;->hasInputConsumerForApp(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 671
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v1, v2, v15}, Lcom/android/server/wm/RecentsAnimationController;->updateInputConsumerForApp(Lcom/android/server/wm/InputConsumerImpl;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 673
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, v4, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {v2, v4}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;Lcom/android/server/input/InputWindowHandle;)V

    .line 674
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2, v3}, Lcom/android/server/wm/InputMonitor;->access$502(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 678
    :cond_2
    return-void

    .line 682
    .end local v1    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 683
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$300(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v11, Lcom/android/server/input/InputWindowHandle;->layer:I

    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, v4, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v4, v4, Lcom/android/server/input/InputWindowHandle;->layer:I

    if-gt v1, v4, :cond_4

    .line 686
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$600(Lcom/android/server/wm/InputMonitor;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/android/server/wm/WindowState;->getBounds(Landroid/graphics/Rect;)V

    .line 687
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v1, v1, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v1, v1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v4}, Lcom/android/server/wm/InputMonitor;->access$600(Lcom/android/server/wm/InputMonitor;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 688
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, v4, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {v1, v4}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;Lcom/android/server/input/InputWindowHandle;)V

    .line 689
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1, v3}, Lcom/android/server/wm/InputMonitor;->access$302(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 692
    :cond_4
    if-nez v15, :cond_5

    .line 694
    return-void

    .line 698
    :cond_5
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$200(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, v11, Lcom/android/server/input/InputWindowHandle;->layer:I

    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, v4, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v4, v4, Lcom/android/server/input/InputWindowHandle;->layer:I

    if-gt v1, v4, :cond_6

    .line 700
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, v4, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {v1, v4}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;Lcom/android/server/input/InputWindowHandle;)V

    .line 701
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1, v3}, Lcom/android/server/wm/InputMonitor;->access$202(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 704
    :cond_6
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 705
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v1, v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 707
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, v4, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {v1, v4}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;Lcom/android/server/input/InputWindowHandle;)V

    .line 708
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1, v3}, Lcom/android/server/wm/InputMonitor;->access$402(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 712
    :cond_7
    and-int/lit16 v1, v13, 0x800

    if-eqz v1, :cond_8

    .line 713
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1, v2}, Lcom/android/server/wm/InputMonitor;->access$702(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 715
    :cond_8
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, v9}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_9

    and-int/lit16 v1, v13, 0x400

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 717
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$700(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-nez v1, :cond_9

    move v8, v2

    goto :goto_1

    :cond_9
    move v8, v3

    .line 721
    .local v8, "hasWallpaper":Z
    :goto_1
    iget-boolean v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->inDrag:Z

    if-eqz v1, :cond_a

    if-eqz v16, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_a

    .line 722
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$800(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v1, v9}, Lcom/android/server/wm/DragDropController;->sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 725
    :cond_a
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    move-object v2, v11

    move-object v3, v9

    move v4, v12

    move v5, v14

    move/from16 v6, v16

    move v7, v15

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandle(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    .line 727
    return-void

    .line 657
    .end local v8    # "hasWallpaper":Z
    .end local v12    # "flags":I
    .end local v13    # "privateFlags":I
    .end local v14    # "type":I
    .end local v15    # "hasFocus":Z
    .end local v16    # "isVisible":Z
    :cond_b
    :goto_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 612
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->accept(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
