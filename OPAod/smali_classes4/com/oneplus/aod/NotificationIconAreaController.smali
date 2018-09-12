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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "NotificationIconArea"

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    .line 57
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 58
    new-instance v0, Lcom/oneplus/doze/NotificationIconDozeHelper;

    invoke-direct {v0, p1}, Lcom/oneplus/doze/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconDozeHelper:Lcom/oneplus/doze/NotificationIconDozeHelper;

    .line 59
    iput-object p1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/NotificationIconAreaController;->initializeNotificationAreaViews(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 61
    return-void
.end method

.method private caculateMaxIconAmounts()I
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    .line 260
    .local v0, "containerWidth":I
    iget v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconSize:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconSize:I

    iget v3, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconHPadding:I

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    .line 262
    .local v1, "amount":I
    const/4 v2, 0x5

    return v2
.end method

.method private generateIconLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 81
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconSize:I

    iget v2, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    iget v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconHPadding:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 87
    :cond_0
    iget v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconHPadding:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 91
    :cond_1
    :goto_0
    return-object v0
.end method

.method private reloadDimens()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f060234

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconSize:I

    .line 98
    const v1, 0x7f060232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconHPadding:I

    .line 99
    iget-object v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    const v2, 0x7f110397

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 100
    return-void
.end method

.method private theOnlyOneNotification(Lcom/oneplus/aod/NotificationData$Entry;Lcom/oneplus/aod/NotificationData;)Z
    .locals 8
    .param p1, "entry"    # Lcom/oneplus/aod/NotificationData$Entry;
    .param p2, "notificationData"    # Lcom/oneplus/aod/NotificationData;

    .line 157
    nop

    .line 158
    invoke-virtual {p2}, Lcom/oneplus/aod/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 159
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/aod/NotificationData$Entry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 160
    .local v1, "size":I
    const/4 v2, 0x0

    .line 161
    .local v2, "notificationCount":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "notificationCount":I
    :goto_0
    const/4 v5, 0x1

    if-ge v2, v1, :cond_1

    .line 162
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

    .line 163
    add-int/lit8 v4, v4, 0x1

    .line 164
    if-le v4, v5, :cond_0

    .line 165
    return v3

    .line 161
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    .end local v2    # "i":I
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

    .line 170
    return v5
.end method


# virtual methods
.method public getNotificationInnerAreaView()Landroid/view/View;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected initializeNotificationAreaViews(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 67
    const v0, 0x7f09003c

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mBatteryEmptyView:Landroid/view/View;

    .line 68
    const v0, 0x7f0900b5

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationEmptyView:Landroid/view/View;

    .line 69
    const v0, 0x7f0900b4

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    .line 71
    iget-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    .line 72
    const v1, 0x7f0900b1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/IconMerger;

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/IconMerger;

    .line 74
    iget-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    const v1, 0x7f0900a8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    .line 75
    invoke-direct {p0}, Lcom/oneplus/aod/NotificationIconAreaController;->reloadDimens()V

    .line 76
    return-void
.end method

.method protected shouldShowNotification(Lcom/oneplus/aod/NotificationData$Entry;Lcom/oneplus/aod/NotificationData;)Z
    .locals 4
    .param p1, "entry"    # Lcom/oneplus/aod/NotificationData$Entry;
    .param p2, "notificationData"    # Lcom/oneplus/aod/NotificationData;

    .line 125
    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/oneplus/aod/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 126
    invoke-static {v0}, Lcom/oneplus/aod/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const-string v0, "NotificationIconArea"

    const-string v2, "don\'t show notification icon due to is ambient"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v1

    .line 131
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/NotificationIconAreaController;->theOnlyOneNotification(Lcom/oneplus/aod/NotificationData$Entry;Lcom/oneplus/aod/NotificationData;)Z

    move-result v0

    .line 134
    .local v0, "theOnlyOne":Z
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

    .line 135
    const-string v2, "NotificationIconArea"

    const-string v3, "don\'t show notification icon due to is app custom group child"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return v1

    .line 141
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

    .line 142
    const-string v2, "NotificationIconArea"

    const-string v3, "don\'t show notification icon due to is group child"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return v1

    .line 152
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public updateNotificationIcons(Lcom/oneplus/aod/NotificationData;)V
    .locals 19
    .param p1, "notificationData"    # Lcom/oneplus/aod/NotificationData;

    move-object/from16 v0, p0

    .line 178
    const-string v1, "NotificationIconArea"

    const-string v2, "updateNotificationIcons"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    nop

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/aod/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 182
    .local v1, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/aod/NotificationData$Entry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 183
    .local v2, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    .local v3, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/aod/StatusBarIconView;>;"
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

    .line 187
    iget-object v4, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    goto :goto_1

    .line 189
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

    .line 192
    :goto_1
    iget-object v4, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 193
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v5

    const v7, 0x7f060232

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    .line 194
    iget-object v5, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 195
    iget-object v5, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 196
    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    .line 198
    :cond_2
    iget-object v5, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 199
    iget-object v5, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 200
    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 204
    :goto_2
    move v5, v8

    .local v5, "i":I
    :goto_3
    if-ge v5, v2, :cond_5

    .line 205
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/aod/NotificationData$Entry;

    .line 206
    .local v7, "ent":Lcom/oneplus/aod/NotificationData$Entry;
    move-object/from16 v9, p1

    invoke-virtual {v0, v7, v9}, Lcom/oneplus/aod/NotificationIconAreaController;->shouldShowNotification(Lcom/oneplus/aod/NotificationData$Entry;Lcom/oneplus/aod/NotificationData;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 208
    iget-object v10, v7, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    .line 210
    .local v10, "v":Landroid/widget/ImageView;
    iget-object v11, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v18

    .line 212
    .local v18, "isGrayScale":Z
    if-eqz v18, :cond_3

    .line 213
    const/4 v11, -0x1

    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    .line 215
    :cond_3
    iget-object v11, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconDozeHelper:Lcom/oneplus/doze/NotificationIconDozeHelper;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x1

    move-object v12, v10

    invoke-virtual/range {v11 .. v17}, Lcom/oneplus/doze/NotificationIconDozeHelper;->setImageDark(Landroid/widget/ImageView;ZZJZ)V

    .line 217
    :goto_4
    iget-object v11, v7, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v7    # "ent":Lcom/oneplus/aod/NotificationData$Entry;
    .end local v10    # "v":Landroid/widget/ImageView;
    .end local v18    # "isGrayScale":Z
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 221
    .end local v5    # "i":I
    :cond_5
    move-object/from16 v9, p1

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/aod/NotificationIconAreaController;->reloadDimens()V

    .line 223
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/aod/NotificationIconAreaController;->caculateMaxIconAmounts()I

    move-result v5

    .line 224
    .local v5, "maxIconAmounts":I
    iget-object v7, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/IconMerger;

    invoke-virtual {v7}, Lcom/oneplus/aod/IconMerger;->removeAllViews()V

    .line 225
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v5, :cond_6

    goto :goto_5

    :cond_6
    move v6, v8

    .line 227
    .local v6, "showMore":Z
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

    .line 229
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v10, 0x8

    if-nez v7, :cond_7

    .line 230
    const-string v7, "NotificationIconArea"

    const-string v8, "updateNotificationIcons: setVisibility to gone"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v7, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    iget-object v7, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationEmptyView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 233
    return-void

    .line 235
    :cond_7
    iget-object v7, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object v7, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationEmptyView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 239
    if-eqz v6, :cond_8

    .line 240
    iget-object v7, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
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

    .line 242
    const-string v7, "NotificationIconArea"

    const-string v10, "more than 7 icons"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 244
    :cond_8
    iget-object v7, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    :goto_6
    if-eqz v6, :cond_9

    move v7, v5

    goto :goto_7

    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 249
    .local v7, "toShowCount":I
    :goto_7
    nop

    .local v8, "i":I
    :goto_8
    if-ge v8, v7, :cond_b

    .line 250
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 251
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_a

    .line 252
    invoke-direct {v0, v8}, Lcom/oneplus/aod/NotificationIconAreaController;->generateIconLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    .line 253
    .local v11, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v12, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/IconMerger;

    invoke-virtual {v12, v10, v8, v11}, Lcom/oneplus/aod/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 249
    .end local v10    # "v":Landroid/view/View;
    .end local v11    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 256
    .end local v8    # "i":I
    :cond_b
    return-void
.end method
