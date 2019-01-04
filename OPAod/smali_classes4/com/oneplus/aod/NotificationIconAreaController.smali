.class public Lcom/oneplus/aod/NotificationIconAreaController;
.super Ljava/lang/Object;
.source "NotificationIconAreaController.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBatteryEmptyView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mIconHPadding:I

.field private mIconSize:I

.field private mMoreIcon:Landroid/widget/TextView;

.field private final mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mNotificationEmptyView:Landroid/view/View;

.field protected mNotificationIconArea:Landroid/widget/LinearLayout;

.field mNotificationIconDozeHelper:Lcom/oneplus/doze/NotificationIconDozeHelper;

.field private mNotificationIcons:Lcom/oneplus/aod/IconMerger;

.field private final mTintArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NotificationIconArea"

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    new-instance v0, Lcom/oneplus/doze/NotificationIconDozeHelper;

    invoke-direct {v0, p1}, Lcom/oneplus/doze/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconDozeHelper:Lcom/oneplus/doze/NotificationIconDozeHelper;

    iput-object p1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/NotificationIconAreaController;->initializeNotificationAreaViews(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private caculateMaxIconAmounts()I
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconSize:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconSize:I

    iget v3, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconHPadding:I

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    const/4 v2, 0x5

    return v2
.end method

.method private generateIconLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconSize:I

    iget v2, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconHPadding:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconHPadding:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_1
    :goto_0
    return-object v0
.end method

.method private reloadDimens()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconSize:I

    const v1, 0x7f060230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconHPadding:I

    iget-object v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    const v2, 0x7f110397

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method private theOnlyOneNotification(Lcom/oneplus/aod/NotificationData$Entry;Lcom/oneplus/aod/NotificationData;)Z
    .locals 8

    nop

    invoke-virtual {p2}, Lcom/oneplus/aod/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v1, :cond_1

    iget-object v6, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/aod/NotificationData$Entry;

    iget-object v7, v7, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    if-le v4, v5, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "NotificationIconArea"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "theOnlyOneNotification: force show "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " icon"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method


# virtual methods
.method public getNotificationInnerAreaView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected initializeNotificationAreaViews(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    const v0, 0x7f09003d

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mBatteryEmptyView:Landroid/view/View;

    const v0, 0x7f0900b6

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationEmptyView:Landroid/view/View;

    const v0, 0x7f0900b5

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    const v1, 0x7f0900b2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/IconMerger;

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/IconMerger;

    iget-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    const v1, 0x7f0900a9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/oneplus/aod/NotificationIconAreaController;->reloadDimens()V

    return-void
.end method

.method protected shouldShowNotification(Lcom/oneplus/aod/NotificationData$Entry;Lcom/oneplus/aod/NotificationData;)Z
    .locals 4

    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/oneplus/aod/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NotificationIconArea"

    const-string v2, "don\'t show notification icon due to is ambient"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/NotificationIconAreaController;->theOnlyOneNotification(Lcom/oneplus/aod/NotificationData$Entry;Lcom/oneplus/aod/NotificationData;)Z

    move-result v0

    iget-object v2, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    const-string v2, "NotificationIconArea"

    const-string v3, "don\'t show notification icon due to is app custom group child"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v2, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    const-string v2, "NotificationIconArea"

    const-string v3, "don\'t show notification icon due to is group child"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public updateNotificationIcons(Lcom/oneplus/aod/NotificationData;)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "NotificationIconArea"

    const-string v2, "updateNotificationIcons"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/aod/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/aod/AodUpdateMonitor;->getClockViewCtrl()Lcom/oneplus/aod/clock/ClockViewCtrl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/aod/clock/ClockViewCtrl;->getClockStyle()I

    move-result v4

    sget v5, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_CLASSIC:I

    const/4 v6, 0x1

    if-eq v4, v5, :cond_0

    iget-object v4, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    goto :goto_1

    :cond_0
    iget-object v4, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    :goto_1
    iget-object v4, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v5

    const v7, 0x7f060230

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    iget-object v5, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    iget-object v5, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    iget-object v5, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_2
    move v5, v8

    :goto_3
    if-ge v5, v2, :cond_5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/aod/NotificationData$Entry;

    move-object/from16 v9, p1

    invoke-virtual {v0, v7, v9}, Lcom/oneplus/aod/NotificationIconAreaController;->shouldShowNotification(Lcom/oneplus/aod/NotificationData$Entry;Lcom/oneplus/aod/NotificationData;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v7, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    iget-object v11, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/4 v11, -0x1

    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    :cond_3
    iget-object v11, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconDozeHelper:Lcom/oneplus/doze/NotificationIconDozeHelper;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x1

    move-object v12, v10

    invoke-virtual/range {v11 .. v17}, Lcom/oneplus/doze/NotificationIconDozeHelper;->setImageDark(Landroid/widget/ImageView;ZZJZ)V

    :goto_4
    iget-object v11, v7, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v9, p1

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/aod/NotificationIconAreaController;->reloadDimens()V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/aod/NotificationIconAreaController;->caculateMaxIconAmounts()I

    move-result v5

    iget-object v7, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/IconMerger;

    invoke-virtual {v7}, Lcom/oneplus/aod/IconMerger;->removeAllViews()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v5, :cond_6

    goto :goto_5

    :cond_6
    move v6, v8

    :goto_5
    const-string v7, "NotificationIconArea"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateNotificationIcons: toShow size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v10, 0x8

    if-nez v7, :cond_7

    const-string v7, "NotificationIconArea"

    const-string v8, "updateNotificationIcons: setVisibility to gone"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v7, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationEmptyView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_7
    iget-object v7, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v7, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationEmptyView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    if-eqz v6, :cond_8

    iget-object v7, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v7, "NotificationIconArea"

    const-string v10, "more than 7 icons"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_8
    iget-object v7, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    if-eqz v6, :cond_9

    move v7, v5

    goto :goto_7

    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_7
    nop

    :goto_8
    if-ge v8, v7, :cond_b

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_a

    invoke-direct {v0, v8}, Lcom/oneplus/aod/NotificationIconAreaController;->generateIconLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    iget-object v12, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/IconMerger;

    invoke-virtual {v12, v10, v8, v11}, Lcom/oneplus/aod/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_b
    return-void
.end method
