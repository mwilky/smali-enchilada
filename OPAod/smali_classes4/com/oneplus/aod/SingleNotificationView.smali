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
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const-string v0, "SingleNotificationView"

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->TAG:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-string v0, "SingleNotificationView"

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->TAG:Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/aod/SingleNotificationView;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const-string v0, "SingleNotificationView"

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->TAG:Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1}, Lcom/oneplus/aod/SingleNotificationView;->init(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    iput-object p1, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method private isTheOnlyNotification(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 359
    return v1

    .line 362
    :cond_0
    const/4 v0, 0x1

    .line 363
    .local v0, "theOne":Z
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v2}, Lcom/oneplus/aod/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v2

    .line 364
    .local v2, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/aod/NotificationData$Entry;>;"
    nop

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 365
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/aod/NotificationData$Entry;

    .line 366
    .local v3, "entry":Lcom/oneplus/aod/NotificationData$Entry;
    iget-object v4, v3, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 367
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

    .line 368
    const/4 v0, 0x0

    .line 369
    goto :goto_1

    .line 364
    .end local v3    # "entry":Lcom/oneplus/aod/NotificationData$Entry;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return v0
.end method

.method private resolveAppName()Ljava/lang/String;
    .locals 6

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "appName":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 324
    .local v1, "n":Landroid/app/Notification;
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 325
    .local v2, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 335
    .end local v2    # "builder":Landroid/app/Notification$Builder;
    goto :goto_0

    .line 326
    :catch_0
    move-exception v2

    .line 327
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "SingleNotificationView"

    const-string v4, "Unable to recover builder"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    iget-object v3, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.appInfo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 331
    .local v3, "appInfo":Landroid/os/Parcelable;
    instance-of v4, v3, Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 332
    move-object v4, v3

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    .line 333
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 332
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "appInfo":Landroid/os/Parcelable;
    :cond_0
    :goto_0
    return-object v0
.end method

.method private showCustomNotification(ZLandroid/view/View;)V
    .locals 3
    .param p1, "isCustom"    # Z
    .param p2, "contentView"    # Landroid/view/View;

    .line 308
    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 309
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 310
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    iget-object v1, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 314
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 317
    :goto_0
    return-void
.end method

.method private updateViewInternal(Lcom/oneplus/aod/NotificationData$Entry;)V
    .locals 17
    .param p1, "entry"    # Lcom/oneplus/aod/NotificationData$Entry;

    move-object/from16 v1, p0

    .line 205
    const-string v0, "SingleNotificationView"

    const-string v2, "updateViewInternal"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 207
    .local v2, "extras":Landroid/os/Bundle;
    const-string v0, ""

    .line 208
    .local v0, "title":Ljava/lang/CharSequence;
    const-string v3, ""

    .line 209
    .local v3, "smallText":Ljava/lang/CharSequence;
    iget-object v4, v1, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 211
    .local v4, "icon":Landroid/graphics/drawable/Icon;
    const-string v5, "android.title"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 212
    .end local v0    # "title":Ljava/lang/CharSequence;
    .local v5, "title":Ljava/lang/CharSequence;
    const-string v0, "android.text"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 214
    move-object/from16 v6, p1

    iget-object v7, v6, Lcom/oneplus/aod/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 216
    .local v7, "contentView":Landroid/widget/RemoteViews;
    const/4 v8, 0x0

    .line 217
    .local v8, "contentViewLocal":Landroid/view/View;
    const/4 v9, 0x0

    .line 219
    .local v9, "isCustom":Z
    const/4 v10, 0x0

    invoke-direct {v1, v9, v10}, Lcom/oneplus/aod/SingleNotificationView;->showCustomNotification(ZLandroid/view/View;)V

    .line 222
    const/4 v11, 0x0

    const/4 v12, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    iget-object v13, v1, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    .line 223
    invoke-virtual {v0, v13}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 222
    invoke-virtual {v7, v0, v10, v10}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    .line 227
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

    .line 229
    if-eqz v9, :cond_1

    .line 230
    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/oneplus/aod/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;)Lcom/oneplus/aod/NotificationViewWrapper;

    move-result-object v0

    .line 231
    .local v0, "wrapper":Lcom/oneplus/aod/NotificationViewWrapper;
    const-wide/16 v13, 0x0

    invoke-virtual {v0, v12, v11, v13, v14}, Lcom/oneplus/aod/NotificationViewWrapper;->setDark(ZZJ)V

    .line 232
    invoke-direct {v1, v9, v8}, Lcom/oneplus/aod/SingleNotificationView;->showCustomNotification(ZLandroid/view/View;)V

    .line 233
    return-void

    .line 235
    .end local v0    # "wrapper":Lcom/oneplus/aod/NotificationViewWrapper;
    :cond_1
    invoke-direct {v1, v9, v10}, Lcom/oneplus/aod/SingleNotificationView;->showCustomNotification(ZLandroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    goto :goto_1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
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

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v0, "SingleNotificationView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateViewInternal: custom="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", show public="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v1, Lcom/oneplus/aod/SingleNotificationView;->mShowingPublic:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->color:I

    .line 244
    .local v0, "headerColor":I
    iget-object v13, v1, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    if-eqz v13, :cond_3

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/aod/SingleNotificationView;->resolveAppName()Ljava/lang/String;

    move-result-object v13

    .line 247
    .local v13, "appName":Ljava/lang/String;
    if-nez v0, :cond_2

    iget-object v14, v1, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x106000b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    goto :goto_2

    :cond_2
    iget-object v14, v1, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget v14, v14, Landroid/app/Notification;->color:I

    const/16 v15, 0x19

    invoke-static {v14, v15}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v14

    :goto_2
    move v0, v14

    .line 248
    if-eqz v13, :cond_3

    .line 249
    iget-object v14, v1, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v14, v1, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    .end local v13    # "appName":Ljava/lang/String;
    :cond_3
    iget-object v13, v1, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    if-eqz v13, :cond_7

    if-eqz v4, :cond_7

    .line 255
    iget-object v13, v1, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 257
    .local v13, "d":Landroid/graphics/drawable/Drawable;
    if-nez v13, :cond_4

    .line 258
    const-string v10, "SingleNotificationView"

    const-string v11, "drawable = null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 262
    :cond_4
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 264
    iget-object v14, v1, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 265
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->color:I

    if-eqz v10, :cond_5

    .line 266
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 269
    :cond_5
    if-eqz v4, :cond_6

    .line 270
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 272
    :cond_6
    const-string v10, "SingleNotificationView"

    const-string v14, "private layout icon null"

    invoke-static {v10, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v13    # "d":Landroid/graphics/drawable/Drawable;
    :cond_7
    :goto_3
    iget-boolean v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mShowingPublic:Z

    const/16 v13, 0x8

    if-nez v10, :cond_d

    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iget-object v14, v1, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    .line 277
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/oneplus/aod/NotificationData;->isLock(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oneplus/aod/AodUpdateMonitor;->isSecure()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_7

    .line 285
    :cond_8
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    if-eqz v10, :cond_c

    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    if-nez v10, :cond_9

    goto :goto_6

    .line 288
    :cond_9
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    const-string v12, ""

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    const-string v12, ""

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    if-eqz v5, :cond_a

    .line 292
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 295
    :cond_a
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    :goto_4
    if-eqz v3, :cond_b

    .line 299
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 302
    :cond_b
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    const-string v10, "SingleNotificationView"

    const-string v11, "small text is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_5
    return-void

    .line 286
    :cond_c
    :goto_6
    return-void

    .line 278
    :cond_d
    :goto_7
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    iget-object v14, v1, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/high16 v15, 0x50a0000

    new-array v13, v12, [Ljava/lang/Object;

    .line 279
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v13, v11

    invoke-virtual {v14, v15, v12, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 278
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v10, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .line 75
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 77
    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v0

    .line 79
    .local v0, "isRTL":Z
    iget-object v1, p0, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 80
    const v1, 0x7f090114

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 84
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060229

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 85
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060228

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 86
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeaderContainer:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    .line 89
    const v2, 0x7f090078

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeaderContainer:Landroid/widget/LinearLayout;

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    if-nez v2, :cond_2

    .line 93
    const v2, 0x7f090113

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    .line 96
    :cond_2
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeaderContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setTextDirection(I)V

    .line 97
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    const v3, 0x7f1103aa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 99
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    if-nez v2, :cond_3

    .line 100
    const v2, 0x7f090116

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    .line 102
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

    .line 103
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    const v5, 0x7f1103ac

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 105
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    if-nez v2, :cond_5

    .line 106
    const v2, 0x7f090115

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    .line 108
    :cond_5
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    move v3, v4

    nop

    :cond_6
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 109
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    const v3, 0x7f1103ab

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 111
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    if-nez v2, :cond_7

    .line 112
    const v2, 0x7f0900b3

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    .line 115
    :cond_7
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    if-nez v2, :cond_8

    .line 116
    const v2, 0x7f0900b0

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    .line 118
    :cond_8
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 122
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    .line 125
    return-void
.end method

.method public setNewPosted(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "isUpdate"    # Z

    .line 128
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

    .line 129
    iput-object p1, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    .line 130
    iput-boolean p2, p0, Lcom/oneplus/aod/SingleNotificationView;->mIsUpdate:Z

    .line 131
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/SingleNotificationView;->isTheOnlyNotification(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mIsTheFirstNotification:Z

    .line 132
    return-void
.end method

.method public setShowLockscreenNotifications(Z)V
    .locals 3
    .param p1, "show"    # Z

    .line 340
    const-string v0, "SingleNotificationView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowLockscreenNotifications: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iput-boolean p1, p0, Lcom/oneplus/aod/SingleNotificationView;->mShowLockscreenNotifications:Z

    .line 342
    return-void
.end method

.method public shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 7
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 350
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

    .line 352
    .local v0, "isImePicker":Z
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

    .line 353
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

    .line 136
    const-string v0, "SingleNotificationView"

    const-string v1, "updateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    .line 138
    const-string v0, "SingleNotificationView"

    const-string v1, "mNewPostedNotification = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getNotificationManager()Lcom/oneplus/aod/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/NotificationManager;->getNotificationData()Lcom/oneplus/aod/NotificationData;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    .line 144
    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0}, Lcom/oneplus/aod/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 145
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/aod/NotificationData$Entry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 146
    .local v1, "N":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_9

    .line 147
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/aod/NotificationData$Entry;

    .line 149
    .local v4, "ent":Lcom/oneplus/aod/NotificationData$Entry;
    iget-object v5, v4, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 150
    const-string v5, "SingleNotificationView"

    const-string v6, "found new notification in activeNotifications"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.incallui"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    const-string v2, "SingleNotificationView"

    const-string v5, "updateView: don\'t update due to inCallUi"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 159
    :cond_1
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    nop

    .line 161
    .local v2, "onGoing":Z
    :cond_2
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mIsTheFirstNotification:Z

    if-nez v5, :cond_3

    .line 162
    const-string v5, "SingleNotificationView"

    const-string v6, "updateView: don\'t update due to isGroupSummary"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 166
    :cond_3
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v5}, Lcom/oneplus/aod/SingleNotificationView;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 167
    const-string v5, "SingleNotificationView"

    const-string v6, "updateView: don\'t update due to not show on keyguard"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 173
    :cond_4
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iget-object v6, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oneplus/aod/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 175
    const-string v5, "SingleNotificationView"

    const-string v6, "updateView: don\'t update due to it\'s a secret"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void

    .line 180
    :cond_5
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->getNotificationManager()Lcom/oneplus/aod/NotificationManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/oneplus/aod/NotificationManager;->showingPublic(Lcom/oneplus/aod/NotificationData$Entry;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mShowingPublic:Z

    .line 181
    invoke-direct {p0, v4}, Lcom/oneplus/aod/SingleNotificationView;->updateViewInternal(Lcom/oneplus/aod/NotificationData$Entry;)V

    .line 185
    if-eqz v2, :cond_6

    iget-boolean v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mIsUpdate:Z

    if-eqz v5, :cond_6

    .line 186
    const-string v5, "SingleNotificationView"

    const-string v6, "updateView: don\'t pulse due to is onGoing and isUpdate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 192
    :cond_6
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v5, v4}, Lcom/oneplus/aod/NotificationData;->shouldFilterOut(Lcom/oneplus/aod/NotificationData$Entry;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 193
    const-string v5, "SingleNotificationView"

    const-string v6, "updateView: don\'t pulse due to filtered out"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void

    .line 198
    :cond_7
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->fireNewNotifications()V

    .line 199
    return-void

    .line 146
    .end local v2    # "onGoing":Z
    .end local v4    # "ent":Lcom/oneplus/aod/NotificationData$Entry;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 202
    .end local v3    # "i":I
    :cond_9
    return-void
.end method
