.class public Landroid/widget/RemoteViews;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$ViewTree;,
        Landroid/widget/RemoteViews$AsyncApplyTask;,
        Landroid/widget/RemoteViews$OnViewAppliedListener;,
        Landroid/widget/RemoteViews$OverrideTextColorsAction;,
        Landroid/widget/RemoteViews$SetRemoteInputsAction;,
        Landroid/widget/RemoteViews$LayoutParamAction;,
        Landroid/widget/RemoteViews$ViewPaddingAction;,
        Landroid/widget/RemoteViews$TextViewSizeAction;,
        Landroid/widget/RemoteViews$TextViewDrawableAction;,
        Landroid/widget/RemoteViews$ViewGroupActionRemove;,
        Landroid/widget/RemoteViews$ViewGroupActionAdd;,
        Landroid/widget/RemoteViews$RunnableAction;,
        Landroid/widget/RemoteViews$ReflectionAction;,
        Landroid/widget/RemoteViews$BitmapReflectionAction;,
        Landroid/widget/RemoteViews$BitmapCache;,
        Landroid/widget/RemoteViews$ViewContentNavigation;,
        Landroid/widget/RemoteViews$SetDrawableTint;,
        Landroid/widget/RemoteViews$SetOnClickPendingIntent;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;,
        Landroid/widget/RemoteViews$SetPendingIntentTemplate;,
        Landroid/widget/RemoteViews$SetOnClickFillInIntent;,
        Landroid/widget/RemoteViews$SetEmptyView;,
        Landroid/widget/RemoteViews$RemoteViewsContextWrapper;,
        Landroid/widget/RemoteViews$RuntimeAction;,
        Landroid/widget/RemoteViews$Action;,
        Landroid/widget/RemoteViews$OnClickHandler;,
        Landroid/widget/RemoteViews$ActionException;,
        Landroid/widget/RemoteViews$RemoteView;,
        Landroid/widget/RemoteViews$MethodArgs;,
        Landroid/widget/RemoteViews$MethodKey;
    }
.end annotation


# static fields
.field private static final ACTION_NOOP:Landroid/widget/RemoteViews$Action;

.field private static final BITMAP_REFLECTION_ACTION_TAG:I = 0xc

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

.field static final EXTRA_REMOTEADAPTER_APPWIDGET_ID:Ljava/lang/String; = "remoteAdapterAppWidgetId"

.field private static final LAYOUT_PARAM_ACTION_TAG:I = 0x13

.field private static final LOG_TAG:Ljava/lang/String; = "RemoteViews"

.field private static final MAX_NESTED_VIEWS:I = 0xa

.field private static final MODE_HAS_LANDSCAPE_AND_PORTRAIT:I = 0x1

.field private static final MODE_NORMAL:I = 0x0

.field private static final OVERRIDE_TEXT_COLORS_TAG:I = 0x14

.field private static final REFLECTION_ACTION_TAG:I = 0x2

.field private static final SET_DRAWABLE_TINT_TAG:I = 0x3

.field private static final SET_EMPTY_VIEW_ACTION_TAG:I = 0x6

.field private static final SET_ON_CLICK_FILL_IN_INTENT_TAG:I = 0x9

.field private static final SET_ON_CLICK_PENDING_INTENT_TAG:I = 0x1

.field private static final SET_PENDING_INTENT_TEMPLATE_TAG:I = 0x8

.field private static final SET_REMOTE_INPUTS_ACTION_TAG:I = 0x12

.field private static final SET_REMOTE_VIEW_ADAPTER_INTENT_TAG:I = 0xa

.field private static final SET_REMOTE_VIEW_ADAPTER_LIST_TAG:I = 0xf

.field private static final TEXT_VIEW_DRAWABLE_ACTION_TAG:I = 0xb

.field private static final TEXT_VIEW_SIZE_ACTION_TAG:I = 0xd

.field private static final VIEW_CONTENT_NAVIGATION_TAG:I = 0x5

.field private static final VIEW_GROUP_ACTION_ADD_TAG:I = 0x4

.field private static final VIEW_GROUP_ACTION_REMOVE_TAG:I = 0x7

.field private static final VIEW_PADDING_ACTION_TAG:I = 0xe

.field private static final sLookupKey:Landroid/widget/RemoteViews$MethodKey;

.field private static final sMethods:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/widget/RemoteViews$MethodKey;",
            "Landroid/widget/RemoteViews$MethodArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field public mApplication:Landroid/content/pm/ApplicationInfo;

.field private mApplyThemeResId:I

.field private mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

.field private final mClassCookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRoot:Z

.field private mIsWidgetCollectionChild:Z

.field private mLandscape:Landroid/widget/RemoteViews;

.field private final mLayoutId:I

.field private mPortrait:Landroid/widget/RemoteViews;

.field private mReapplyDisallowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {v0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    new-instance v0, Landroid/widget/RemoteViews$MethodKey;

    invoke-direct {v0}, Landroid/widget/RemoteViews$MethodKey;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sLookupKey:Landroid/widget/RemoteViews$MethodKey;

    new-instance v0, Landroid/widget/RemoteViews$1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->ACTION_NOOP:Landroid/widget/RemoteViews$Action;

    new-instance v0, Landroid/widget/RemoteViews$2;

    invoke-direct {v0}, Landroid/widget/RemoteViews$2;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/content/pm/ApplicationInfo;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    iput-object p1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput p2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;ILjava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;ILjava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/widget/RemoteViews$BitmapCache;",
            "Landroid/content/pm/ApplicationInfo;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    const/16 v2, 0xa

    if-le p4, v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many nested views."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    add-int/2addr p4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez p2, :cond_2

    new-instance v2, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v2, p1}, Landroid/widget/RemoteViews$BitmapCache;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {p1}, Landroid/os/Parcel;->copyClassCookies()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    goto :goto_1

    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    iput-object p5, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->setNotRoot()V

    :goto_1
    if-nez v8, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_3

    move-object v2, p3

    goto :goto_2

    :cond_3
    sget-object v2, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    :goto_2
    iput-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_4

    move v2, v0

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    invoke-direct {p0, p1, p4}, Landroid/widget/RemoteViews;->readActionsFromParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_5
    new-instance v9, Landroid/widget/RemoteViews;

    iget-object v4, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v7, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    move-object v2, v9

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;ILjava/util/Map;)V

    iput-object v9, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    new-instance v9, Landroid/widget/RemoteViews;

    iget-object v4, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iget-object v5, v2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    move-object v2, v9

    invoke-direct/range {v2 .. v7}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;ILjava/util/Map;)V

    iput-object v9, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget-object v2, v2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    iput v2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mReapplyDisallowed:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;ILjava/util/Map;Landroid/widget/RemoteViews$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;ILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    iget-object v1, p1, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v1, p1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, p1, Landroid/widget/RemoteViews;->mIsRoot:Z

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    iget v1, p1, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    iget-boolean v1, p1, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    iget-boolean v1, p1, Landroid/widget/RemoteViews;->mReapplyDisallowed:Z

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mReapplyDisallowed:Z

    iget-object v1, p1, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-direct {p1}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p1, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p1, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    :cond_0
    iget-object v1, p1, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->putClassCookies(Ljava/util/Map;)V

    invoke-direct {p1, v1}, Landroid/widget/RemoteViews;->writeActionsToParcel(Landroid/os/Parcel;)V

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-direct {p0, v1, v0}, Landroid/widget/RemoteViews;->readActionsFromParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_1
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    iput-object p1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object p2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    iget-object v0, p2, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    :goto_0
    iput-object v0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both RemoteViews must share the same package and user"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both RemoteViews must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/widget/RemoteViews;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-static {p1, p2}, Landroid/widget/RemoteViews;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$AsyncApplyTask;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->getAsyncApplyTask(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/RemoteViews;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/widget/RemoteViews;->loadTransitionOverride(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400()Landroid/widget/RemoteViews$OnClickHandler;
    .locals 1

    sget-object v0, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    return-object v0
.end method

.method static synthetic access$600()Landroid/widget/RemoteViews$Action;
    .locals 1

    sget-object v0, Landroid/widget/RemoteViews;->ACTION_NOOP:Landroid/widget/RemoteViews$Action;

    return-object v0
.end method

.method static synthetic access$700(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/widget/RemoteViews;->visitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private addAction(Landroid/widget/RemoteViews$Action;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RemoteViews specifying separate landscape and portrait layouts cannot be modified. Instead, fully configure the landscape and portrait layouts individually before constructing the combined layout."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p1, v0}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->setNotRoot()V

    return-void
.end method

.method private getActionFromParcel(Landroid/os/Parcel;I)Landroid/widget/RemoteViews$Action;
    .locals 9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    new-instance v1, Landroid/widget/RemoteViews$OverrideTextColorsAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$OverrideTextColorsAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_2
    new-instance v1, Landroid/widget/RemoteViews$LayoutParamAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :pswitch_3
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteInputsAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRemoteInputsAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_4
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_5
    new-instance v1, Landroid/widget/RemoteViews$ViewPaddingAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_6
    new-instance v1, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_7
    new-instance v1, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_8
    new-instance v1, Landroid/widget/RemoteViews$TextViewDrawableAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_9
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_a
    new-instance v1, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_b
    new-instance v1, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_c
    new-instance v1, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_d
    new-instance v1, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_e
    new-instance v1, Landroid/widget/RemoteViews$ViewContentNavigation;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_f
    new-instance v1, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    iget-object v5, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v6, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    invoke-direct/range {v2 .. v8}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;ILjava/util/Map;)V

    return-object v1

    :pswitch_10
    new-instance v1, Landroid/widget/RemoteViews$SetDrawableTint;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetDrawableTint;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_11
    new-instance v1, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_12
    new-instance v1, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 6

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, p0, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    nop

    :cond_2
    return-object v1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot create remote views out of an aplication."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getAsyncApplyTask(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$AsyncApplyTask;
    .locals 10

    new-instance v9, Landroid/widget/RemoteViews$AsyncApplyTask;

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;Landroid/view/View;Landroid/widget/RemoteViews$1;)V

    return-object v9
.end method

.method private getContextForResources(Landroid/content/Context;)Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "RemoteViews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method

.method private getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/widget/RemoteViews;->sLookupKey:Landroid/widget/RemoteViews$MethodKey;

    invoke-virtual {v2, v0, p3, p2}, Landroid/widget/RemoteViews$MethodKey;->set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    sget-object v2, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    sget-object v3, Landroid/widget/RemoteViews;->sLookupKey:Landroid/widget/RemoteViews$MethodKey;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$MethodArgs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    if-nez p3, :cond_0

    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    new-array v5, v3, [Ljava/lang/Class;

    aput-object p3, v5, v4

    invoke-virtual {v0, p2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    :goto_0
    const-class v6, Landroid/view/RemotableViewMethod;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Landroid/widget/RemoteViews$MethodArgs;

    invoke-direct {v6}, Landroid/widget/RemoteViews$MethodArgs;-><init>()V

    move-object v2, v6

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    iput-object v6, v2, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    const-class v6, Landroid/view/RemotableViewMethod;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Landroid/view/RemotableViewMethod;

    invoke-interface {v6}, Landroid/view/RemotableViewMethod;->asyncImpl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    nop

    :try_start_2
    new-instance v6, Landroid/widget/RemoteViews$MethodKey;

    invoke-direct {v6}, Landroid/widget/RemoteViews$MethodKey;-><init>()V

    invoke-virtual {v6, v0, p3, p2}, Landroid/widget/RemoteViews$MethodKey;->set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    sget-object v7, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_1
    :try_start_3
    new-instance v3, Landroid/widget/RemoteViews$ActionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "view: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " can\'t use method with RemoteViews: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    nop

    :try_start_4
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "view: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " doesn\'t have method: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    :goto_2
    if-nez p4, :cond_3

    iget-object v3, v2, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    monitor-exit v1

    return-object v3

    :cond_3
    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x0

    monitor-exit v1

    return-object v3

    :cond_4
    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;

    if-nez v5, :cond_5

    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v3

    const-class v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v4, v0, v5, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    iput-object v4, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v4

    :try_start_6
    new-instance v5, Landroid/widget/RemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Async implementation declared as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " but not defined for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": public Runnable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->parameterArray()[Ljava/lang/Class;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    :goto_3
    iget-object v3, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2
.end method

.method private static getParameters(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string v0, "()"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 2

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    return-object v1

    :cond_1
    return-object p0
.end method

.method private static getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    aget v4, v1, v3

    int-to-float v4, v4

    mul-float/2addr v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    aget v6, v1, v4

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->top:I

    aget v3, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    aget v3, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    return-object v2
.end method

.method private hasLandscapeAndPortraitLayouts()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getContextForResources(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;

    invoke-direct {v1, p1, v0}, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    iget v2, p0, Landroid/widget/RemoteViews;->mApplyThemeResId:I

    if-eqz v2, :cond_0

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget v3, p0, Landroid/widget/RemoteViews;->mApplyThemeResId:I

    invoke-direct {v2, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    :cond_0
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020018

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    return-object v3
.end method

.method private static loadTransitionOverride(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/RemoteViews$OnClickHandler;->setEnterAnimationId(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    sget-object v0, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    move-object p3, v0

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2, p1, p2, p3}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private readActionsFromParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;->getActionFromParcel(Landroid/os/Parcel;I)Landroid/widget/RemoteViews$Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 3

    iput-object p1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$Action;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private startTaskOnExecutor(Landroid/widget/RemoteViews$AsyncApplyTask;Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;
    .locals 3

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    if-nez p2, :cond_0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews$AsyncApplyTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method private static visitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private writeActionsToParcel(Landroid/os/Parcel;)V
    .locals 5

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v3}, Landroid/widget/RemoteViews$Action;->getActionTag()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViews$Action;->hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    invoke-virtual {v3, p1, v4}, Landroid/widget/RemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public addView(ILandroid/widget/RemoteViews;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/widget/RemoteViews;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public addView(ILandroid/widget/RemoteViews;I)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, p3}, Landroid/widget/RemoteViews;->loadTransitionOverride(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V

    invoke-direct {v0, v1, p2, p3}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    return-object v1
.end method

.method public applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;)Landroid/os/CancellationSignal;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;
    .locals 1

    invoke-direct {p0, p1, p2, p4, p5}, Landroid/widget/RemoteViews;->getAsyncApplyTask(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/widget/RemoteViews;->startTaskOnExecutor(Landroid/widget/RemoteViews$AsyncApplyTask;Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/widget/RemoteViews;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const-string v1, "RemoteView has been attached to another RemoteView. May only clone the root of a RemoteView hierarchy."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public estimateMemoryUsage()I
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapMemory()I

    move-result v0

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    iget v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReapplyDisallowed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mReapplyDisallowed:Z

    return v0
.end method

.method public mergeRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    :cond_1
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    iget-object v5, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v5}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    return-void

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    nop

    :goto_1
    if-ge v3, v2, :cond_7

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v6}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v7}, Landroid/widget/RemoteViews$Action;->mergeBehavior()I

    move-result v7

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v7, :cond_4

    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v7, :cond_5

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    :cond_5
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    new-instance v3, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v3}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v3, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public overrideTextColors(I)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$OverrideTextColorsAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$OverrideTextColorsAction;-><init>(Landroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public prefersAsyncApply()Z
    .locals 4

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v3}, Landroid/widget/RemoteViews$Action;->prefersAsyncApply()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    return-void
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x1020018

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempting to re-apply RemoteViews to a view that that does not share the same root layout id."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, p2, v1, p3}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    return-void
.end method

.method public reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;)Landroid/os/CancellationSignal;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;
    .locals 12

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v9

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x1020018

    move-object v10, p2

    invoke-virtual {v10, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to re-apply RemoteViews to a view that that does not share the same root layout id."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v10, p2

    :goto_0
    new-instance v11, Landroid/widget/RemoteViews$AsyncApplyTask;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v8, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, v9

    move-object v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, v10

    invoke-direct/range {v0 .. v8}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;Landroid/view/View;Landroid/widget/RemoteViews$1;)V

    move-object v0, p0

    move-object v1, p3

    invoke-direct {v0, v11, v1}, Landroid/widget/RemoteViews;->startTaskOnExecutor(Landroid/widget/RemoteViews$AsyncApplyTask;Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;

    move-result-object v2

    return-object v2
.end method

.method public reduceImageSizes(II)V
    .locals 4

    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v0, v0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2, p1, p2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAllViews(I)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public removeAllViewsExceptId(II)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/widget/RemoteViews;II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setAccessibilityTraversalAfter(II)V
    .locals 1

    const-string/jumbo v0, "setAccessibilityTraversalAfter"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setAccessibilityTraversalBefore(II)V
    .locals 1

    const-string/jumbo v0, "setAccessibilityTraversalBefore"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setApplyTheme(I)V
    .locals 0

    iput p1, p0, Landroid/widget/RemoteViews;->mApplyThemeResId:I

    return-void
.end method

.method public setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setBoolean(ILjava/lang/String;Z)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setBundle(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xd

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setByte(ILjava/lang/String;B)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v4, 0x2

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setChar(ILjava/lang/String;C)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    const/16 v4, 0x8

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xa

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setChronometer(IJLjava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "setBase"

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    const-string/jumbo v0, "setFormat"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "setStarted"

    invoke-virtual {p0, p1, v0, p5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    return-void
.end method

.method public setChronometerCountDown(IZ)V
    .locals 1

    const-string/jumbo v0, "setCountDown"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    return-void
.end method

.method public setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setContentDescription(ILjava/lang/CharSequence;)V
    .locals 1

    const-string/jumbo v0, "setContentDescription"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDisplayedChild(II)V
    .locals 1

    const-string/jumbo v0, "setDisplayedChild"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setDouble(ILjava/lang/String;D)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v4, 0x7

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$SetDrawableTint;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$SetDrawableTint;-><init>(Landroid/widget/RemoteViews;IZILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setEmptyView(II)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setFloat(ILjava/lang/String;F)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v4, 0x6

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x10

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1

    const-string/jumbo v0, "setImageBitmap"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageViewIcon(ILandroid/graphics/drawable/Icon;)V
    .locals 1

    const-string/jumbo v0, "setImageIcon"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public setImageViewResource(II)V
    .locals 1

    const-string/jumbo v0, "setImageResource"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setImageViewUri(ILandroid/net/Uri;)V
    .locals 1

    const-string/jumbo v0, "setImageURI"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setUri(ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public setInt(ILjava/lang/String;I)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x4

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xe

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method setIsWidgetCollectionChild(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    return-void
.end method

.method public setLabelFor(II)V
    .locals 1

    const-string/jumbo v0, "setLabelFor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setLong(ILjava/lang/String;J)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v4, 0x5

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method setNotRoot()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    return-void
.end method

.method public setOnClickFillInIntent(ILandroid/content/Intent;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v3, "setProgressBackgroundTintList"

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setProgressBar(IIIZ)V
    .locals 1

    const-string/jumbo v0, "setIndeterminate"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    if-nez p4, :cond_0

    const-string/jumbo v0, "setMax"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string/jumbo v0, "setProgress"

    invoke-virtual {p0, p1, v0, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v3, "setIndeterminateTintList"

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setProgressTintList(ILandroid/content/res/ColorStateList;)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v3, "setProgressTintList"

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setReapplyDisallowed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mReapplyDisallowed:Z

    return-void
.end method

.method public setRelativeScrollPosition(II)V
    .locals 1

    const-string/jumbo v0, "smoothScrollByOffset"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setRemoteAdapter(IILandroid/content/Intent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2, p3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    return-void
.end method

.method public setRemoteAdapter(ILandroid/content/Intent;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setRemoteAdapter(ILjava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setRemoteInputs(I[Landroid/app/RemoteInput;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/RemoteViews$SetRemoteInputsAction;

    invoke-direct {v1, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteInputsAction;-><init>(Landroid/widget/RemoteViews;I[Landroid/app/RemoteInput;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setScrollPosition(II)V
    .locals 1

    const-string/jumbo v0, "smoothScrollToPosition"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setShort(ILjava/lang/String;S)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    const/4 v4, 0x3

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setString(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x9

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setTextColor(II)V
    .locals 1

    const-string/jumbo v0, "setTextColor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setTextColor(ILandroid/content/res/ColorStateList;)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v3, "setTextColor"

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setTextViewCompoundDrawables(IIIII)V
    .locals 9

    new-instance v8, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setTextViewCompoundDrawables(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 9

    new-instance v8, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setTextViewCompoundDrawablesRelative(IIIII)V
    .locals 9

    new-instance v8, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x1

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setTextViewCompoundDrawablesRelative(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 9

    new-instance v8, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x1

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setTextViewText(ILjava/lang/CharSequence;)V
    .locals 1

    const-string/jumbo v0, "setText"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextViewTextSize(IIF)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;IIF)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setUri(ILjava/lang/String;Landroid/net/Uri;)V
    .locals 7

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object p3

    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RemoteViews.setUri()"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v5, 0xb

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewLayoutMarginBottomDimen(II)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1, p2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewLayoutMarginEnd(II)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1, p2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewLayoutMarginEndDimen(II)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewLayoutWidth(II)V
    .locals 3

    if-eqz p2, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only supports 0, WRAP_CONTENT and MATCH_PARENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/RemoteViews$LayoutParamAction;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2, p2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setViewPadding(IIIII)V
    .locals 8

    new-instance v7, Landroid/widget/RemoteViews$ViewPaddingAction;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;IIIII)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewVisibility(II)V
    .locals 1

    const-string/jumbo v0, "setVisibility"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public showNext(I)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$ViewContentNavigation;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;IZ)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public showPrevious(I)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$ViewContentNavigation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;IZ)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public visitUris(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$Action;->visitUris(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v2, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    :cond_0
    iget-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-nez v2, :cond_1

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->writeActionsToParcel(Landroid/os/Parcel;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    :cond_3
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    or-int/lit8 v1, p2, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mReapplyDisallowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
