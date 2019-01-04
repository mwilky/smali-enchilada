.class public Lcom/oneplus/aod/SingleNotificationView;
.super Landroid/widget/LinearLayout;
.source "SingleNotificationView.java"


# static fields
.field private static final IME_PICKER_ID:I = 0x10405e9


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHeader:Landroid/widget/TextView;

.field private mHeaderContainer:Landroid/widget/LinearLayout;

.field private mIcon:Landroid/widget/ImageView;

.field private mIsTheFirstNotification:Z

.field private mIsUpdate:Z

.field private mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

.field mNotificationData:Lcom/oneplus/aod/NotificationData;

.field private mNotificationViewCustom:Landroid/widget/LinearLayout;

.field private mNotificationViewDefault:Landroid/widget/LinearLayout;

.field private mShowLockscreenNotifications:Z

.field private mShowingPublic:Z

.field private mSmallText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "SingleNotificationView"

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "SingleNotificationView"

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/aod/SingleNotificationView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "SingleNotificationView"

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/aod/SingleNotificationView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isTheOnlyNotification(Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v2}, Lcom/oneplus/aod/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v2

    nop

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/aod/NotificationData$Entry;

    iget-object v4, v3, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SingleNotificationView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private resolveAppName()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SingleNotificationView"

    const-string v4, "Unable to recover builder"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.appInfo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    instance-of v4, v3, Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0
.end method

.method private showCustomNotification(ZLandroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateViewInternal(Lcom/oneplus/aod/NotificationData$Entry;)V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "SingleNotificationView"

    const-string v2, "updateViewInternal"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, ""

    const-string v3, ""

    iget-object v4, v1, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    const-string v5, "android.title"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    const-string v0, "android.text"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v6, p1

    iget-object v7, v6, Lcom/oneplus/aod/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v1, v9, v10}, Lcom/oneplus/aod/SingleNotificationView;->showCustomNotification(ZLandroid/view/View;)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    iget-object v13, v1, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v13}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7, v0, v10, v10}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    const v0, 0x1020426

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    move v9, v0

    if-eqz v9, :cond_1

    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/oneplus/aod/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;)Lcom/oneplus/aod/NotificationViewWrapper;

    move-result-object v0

    const-wide/16 v13, 0x0

    invoke-virtual {v0, v12, v11, v13, v14}, Lcom/oneplus/aod/NotificationViewWrapper;->setDark(ZZJ)V

    invoke-direct {v1, v9, v8}, Lcom/oneplus/aod/SingleNotificationView;->showCustomNotification(ZLandroid/view/View;)V

    return-void

    :cond_1
    invoke-direct {v1, v9, v10}, Lcom/oneplus/aod/SingleNotificationView;->showCustomNotification(ZLandroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v13, "SingleNotificationView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception e = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->color:I

    if-nez v0, :cond_2

    iget-object v13, v1, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x106000b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    goto :goto_2

    :cond_2
    const/16 v13, 0x19

    invoke-static {v0, v13}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v13

    :goto_2
    const-string v14, "SingleNotificationView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateViewInternal: custom="

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", show public="

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v1, Lcom/oneplus/aod/SingleNotificationView;->mShowingPublic:Z

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", color=0x"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", headerColor=0x"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v1, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    if-eqz v12, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/aod/SingleNotificationView;->resolveAppName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    iget-object v14, v1, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v14, v1, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    goto :goto_3

    :cond_4
    const-string v12, "SingleNotificationView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " mHeader is null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v12, v1, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    if-eqz v12, :cond_8

    if-eqz v4, :cond_8

    iget-object v12, v1, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v12}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-nez v12, :cond_5

    const-string v10, "SingleNotificationView"

    const-string v11, "drawable = null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iget-object v14, v1, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eqz v0, :cond_6

    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_6
    if-eqz v4, :cond_7

    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_7
    const-string v10, "SingleNotificationView"

    const-string v14, "private layout icon null"

    invoke-static {v10, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    goto :goto_5

    :cond_8
    const-string v10, "SingleNotificationView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " mIcon and icon is null"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-boolean v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mShowingPublic:Z

    const/16 v12, 0x8

    if-nez v10, :cond_e

    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iget-object v14, v1, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/oneplus/aod/NotificationData;->isLock(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oneplus/aod/AodUpdateMonitor;->isSecure()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_9

    :cond_9
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    if-eqz v10, :cond_d

    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    if-nez v10, :cond_a

    goto :goto_8

    :cond_a
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    const-string v14, ""

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    const-string v14, ""

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_b

    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_b
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    if-eqz v3, :cond_c

    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_c
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v10, "SingleNotificationView"

    const-string v11, "small text is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void

    :cond_d
    :goto_8
    return-void

    :cond_e
    :goto_9
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    iget-object v14, v1, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v12, 0x1

    new-array v15, v12, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v11

    const/high16 v11, 0x50a0000

    invoke-virtual {v14, v11, v12, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    const v1, 0x7f090115

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060227

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060226

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeaderContainer:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    const v2, 0x7f090079

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeaderContainer:Landroid/widget/LinearLayout;

    :cond_1
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    if-nez v2, :cond_2

    const v2, 0x7f090114

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    :cond_2
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeaderContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setTextDirection(I)V

    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    const v3, 0x7f1103aa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    if-nez v2, :cond_3

    const v2, 0x7f090117

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    :cond_3
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eqz v0, :cond_4

    move v5, v4

    goto :goto_0

    :cond_4
    move v5, v3

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    const v5, 0x7f1103ac

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    if-nez v2, :cond_5

    const v2, 0x7f090116

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    :cond_5
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    move v3, v4

    nop

    :cond_6
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    const v3, 0x7f1103ab

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    if-nez v2, :cond_7

    const v2, 0x7f0900b4

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    :cond_7
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    if-nez v2, :cond_8

    const v2, 0x7f0900b1

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    :cond_8
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    return-void
.end method

.method public setNewPosted(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 3

    const-string v0, "SingleNotificationView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNewPosted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    iput-boolean p2, p0, Lcom/oneplus/aod/SingleNotificationView;->mIsUpdate:Z

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/SingleNotificationView;->isTheOnlyNotification(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mIsTheFirstNotification:Z

    return-void
.end method

.method public setShowLockscreenNotifications(Z)V
    .locals 3

    const-string v0, "SingleNotificationView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowLockscreenNotifications: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/aod/SingleNotificationView;->mShowLockscreenNotifications:Z

    return-void
.end method

.method public shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x10405e9

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "SingleNotificationView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldShowOnKeyguard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mShowLockscreenNotifications:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isAmbient = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oneplus/aod/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isImePicker="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/oneplus/aod/SingleNotificationView;->mShowLockscreenNotifications:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/aod/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method public updateView()V
    .locals 7

    const-string v0, "SingleNotificationView"

    const-string v1, "updateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    const-string v0, "SingleNotificationView"

    const-string v1, "mNewPostedNotification = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getNotificationManager()Lcom/oneplus/aod/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/NotificationManager;->getNotificationData()Lcom/oneplus/aod/NotificationData;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0}, Lcom/oneplus/aod/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/aod/NotificationData$Entry;

    iget-object v5, v4, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "SingleNotificationView"

    const-string v6, "found new notification in activeNotifications"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.incallui"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, "SingleNotificationView"

    const-string v5, "updateView: don\'t update due to inCallUi"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mIsTheFirstNotification:Z

    if-nez v5, :cond_3

    const-string v5, "SingleNotificationView"

    const-string v6, "updateView: don\'t update due to isGroupSummary"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v5}, Lcom/oneplus/aod/SingleNotificationView;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "SingleNotificationView"

    const-string v6, "updateView: don\'t update due to not show on keyguard"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iget-object v6, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oneplus/aod/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    const-string v5, "SingleNotificationView"

    const-string v6, "updateView: don\'t update due to it\'s a secret"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->getNotificationManager()Lcom/oneplus/aod/NotificationManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/oneplus/aod/NotificationManager;->showingPublic(Lcom/oneplus/aod/NotificationData$Entry;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mShowingPublic:Z

    invoke-direct {p0, v4}, Lcom/oneplus/aod/SingleNotificationView;->updateViewInternal(Lcom/oneplus/aod/NotificationData$Entry;)V

    if-eqz v2, :cond_6

    iget-boolean v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mIsUpdate:Z

    if-eqz v5, :cond_6

    const-string v5, "SingleNotificationView"

    const-string v6, "updateView: don\'t pulse due to is onGoing and isUpdate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v5, v4}, Lcom/oneplus/aod/NotificationData;->shouldFilterOut(Lcom/oneplus/aod/NotificationData$Entry;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "SingleNotificationView"

    const-string v6, "updateView: don\'t pulse due to filtered out"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->fireNewNotifications()V

    return-void

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method
