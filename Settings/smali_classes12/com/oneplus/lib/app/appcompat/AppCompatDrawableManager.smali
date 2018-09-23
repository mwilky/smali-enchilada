.class public Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$AvdcInflateDelegate;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$VdcInflateDelegate;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;
    }
.end annotation


# static fields
.field private static final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

.field private static final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

.field private static final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

.field private static final COLOR_FILTER_CACHE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager; = null

.field private static final PLATFORM_VD_CLAZZ:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static final SKIP_DRAWABLE_TAG:Ljava/lang/String; = "appcompat_skip_skip"

.field private static final TAG:Ljava/lang/String; = "AppCompatDrawableManager"

.field private static final TINT_CHECKABLE_BUTTON_LIST:[I

.field private static final TINT_COLOR_CONTROL_NORMAL:[I

.field private static final TINT_COLOR_CONTROL_STATE_LIST:[I


# instance fields
.field private mDelegates:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawableCacheLock:Ljava/lang/Object;

.field private final mDrawableCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mHasCheckedVectorDrawableSetup:Z

.field private mKnownDrawableIdTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTintLists:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

    const/4 v0, 0x3

    new-array v2, v0, [I

    sget v3, Lcom/oneplus/commonctrl/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lcom/oneplus/commonctrl/R$drawable;->abc_textfield_default_mtrl_alpha:I

    const/4 v5, 0x1

    aput v3, v2, v5

    sget v3, Lcom/oneplus/commonctrl/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    const/4 v6, 0x2

    aput v3, v2, v6

    sput-object v2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    const/4 v2, 0x7

    new-array v3, v2, [I

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v7, v3, v4

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_seekbar_tick_mark_material:I

    aput v7, v3, v5

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    aput v7, v3, v6

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v7, v3, v0

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    const/4 v8, 0x4

    aput v7, v3, v8

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    const/4 v9, 0x5

    aput v7, v3, v9

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v7, v3, v1

    sput-object v3, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    const/16 v3, 0xa

    new-array v3, v3, [I

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v7, v3, v4

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v7, v3, v5

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v7, v3, v6

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_text_cursor_material:I

    aput v7, v3, v0

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_text_select_handle_left_mtrl_dark:I

    aput v7, v3, v8

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_text_select_handle_middle_mtrl_dark:I

    aput v7, v3, v9

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_text_select_handle_right_mtrl_dark:I

    aput v7, v3, v1

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_text_select_handle_left_mtrl_light:I

    aput v1, v3, v2

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_text_select_handle_middle_mtrl_light:I

    const/16 v2, 0x8

    aput v1, v3, v2

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_text_select_handle_right_mtrl_light:I

    const/16 v2, 0x9

    aput v1, v3, v2

    sput-object v3, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    new-array v0, v0, [I

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_popup_background_mtrl_mult:I

    aput v1, v0, v4

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_cab_background_internal_bg:I

    aput v1, v0, v5

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v1, v0, v6

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    new-array v0, v6, [I

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_tab_indicator_material:I

    aput v1, v0, v4

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_textfield_search_material:I

    aput v1, v0, v5

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    new-array v0, v6, [I

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_btn_check_material:I

    aput v1, v0, v4

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_btn_radio_material:I

    aput v1, v0, v5

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    return-void
.end method

.method private addDelegate(Ljava/lang/String;Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/util/LongSparseArray;

    if-nez v2, :cond_0

    new-instance v3, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v3}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    move-object v2, v3

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2, p3, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    monitor-exit v1

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_1

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method private static arrayContains([II)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private checkVectorDrawableSetup(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    return-void
.end method

.method private createBorderlessButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v0, v0, [I

    const/4 v2, 0x0

    sget v3, Lcom/oneplus/commonctrl/R$attr;->colorControlHighlight:I

    invoke-static {p1, v3}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    sget v4, Lcom/oneplus/commonctrl/R$attr;->colorButtonNormal:I

    invoke-static {p1, v4}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v5, v1, v2

    const/4 v5, 0x0

    if-nez p3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    aget-object v6, v1, v2

    invoke-virtual {p3, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    :goto_0
    aput v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    sget-object v6, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->PRESSED_STATE_SET:[I

    aput-object v6, v1, v2

    nop

    if-nez p3, :cond_1

    move v6, p2

    goto :goto_1

    :cond_1
    aget-object v6, v1, v2

    invoke-virtual {p3, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    :goto_1
    invoke-static {v3, v6}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v6

    aput v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    sget-object v6, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->FOCUSED_STATE_SET:[I

    aput-object v6, v1, v2

    nop

    if-nez p3, :cond_2

    move v6, p2

    goto :goto_2

    :cond_2
    aget-object v6, v1, v2

    invoke-virtual {p3, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    :goto_2
    invoke-static {v3, v6}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v6

    aput v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    sget-object v6, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v6, v1, v2

    if-nez p3, :cond_3

    move v5, p2

    goto :goto_3

    :cond_3
    aget-object v6, v1, v2

    invoke-virtual {p3, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    :goto_3
    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v5
.end method

.method private static createCacheKey(Landroid/util/TypedValue;)J
    .locals 4

    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private createColoredButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lcom/oneplus/commonctrl/R$attr;->colorAccent:I

    invoke-static {p1, v0}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createDefaultButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lcom/oneplus/commonctrl/R$attr;->colorButtonNormal:I

    invoke-static {p1, v0}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    sget v5, Lcom/oneplus/commonctrl/R$drawable;->abc_cab_background_top_material:I

    if-ne p2, v5, :cond_2

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    sget v8, Lcom/oneplus/commonctrl/R$drawable;->abc_cab_background_internal_bg:I

    invoke-virtual {p0, p1, v8}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v6, v7

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    invoke-virtual {p0, p1, v7}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v1, v5

    :cond_2
    if-eqz v1, :cond_3

    iget v2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-direct {p0, p1, v3, v4, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    :cond_3
    return-object v1
.end method

.method private static createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-static {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static get()Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;
    .locals 1

    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->INSTANCE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    invoke-direct {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->INSTANCE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->INSTANCE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->installDefaultInflateDelegates(Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;)V

    :cond_0
    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->INSTANCE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    return-object v0
.end method

.method private getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/util/LongSparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :cond_1
    invoke-virtual {v1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    :cond_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v0, v1

    sget-object v1, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v1, p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    :cond_0
    return-object v0
.end method

.method private getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    nop

    :cond_0
    return-object v1

    :cond_1
    return-object v1
.end method

.method static getTintMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_switch_thumb_material:I

    if-ne p0, v1, :cond_0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-object v0
.end method

.method private static installDefaultInflateDelegates(Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;)V
    .locals 3
    .param p0    # Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const-string v1, "vector"

    new-instance v2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$VdcInflateDelegate;

    invoke-direct {v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$VdcInflateDelegate;-><init>()V

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;)V

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const-string v1, "animated-vector"

    new-instance v2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$AvdcInflateDelegate;

    invoke-direct {v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$AvdcInflateDelegate;-><init>()V

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;)V

    :cond_0
    return-void
.end method

.method private static isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    if-nez v0, :cond_1

    const-string v0, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "appcompat_skip_skip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4

    return-object v5

    :cond_4
    iget-object v6, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v6, :cond_9

    iget-object v6, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    :goto_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v9, v8

    const/4 v10, 0x2

    if-eq v8, v10, :cond_5

    if-eq v9, v2, :cond_5

    goto :goto_2

    :cond_5
    if-ne v9, v10, :cond_8

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    invoke-virtual {v8, p2, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;

    if-eqz v8, :cond_6

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-interface {v8, p1, v6, v7, v10}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;->createFromXmlInner(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object v5, v10

    :cond_6
    if-eqz v5, :cond_7

    iget v10, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v5, v10}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    :cond_7
    goto :goto_3

    :cond_8
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "No start tag found"

    invoke-direct {v2, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    :cond_9
    :goto_3
    if-nez v5, :cond_a

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    const-string v6, "appcompat_skip_skip"

    invoke-virtual {v2, p2, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_a
    return-object v5

    :cond_b
    return-object v1
.end method

.method private removeDelegate(Ljava/lang/String;Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    invoke-static {p0}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    if-nez p2, :cond_1

    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-static {p1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p4}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    :cond_0
    invoke-static {p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-static {p4, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-static {p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p4, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    goto/16 :goto_1

    :cond_2
    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_seekbar_track_material:I

    const v2, 0x102000d

    const v3, 0x102000f

    const/high16 v4, 0x1020000

    if-ne p2, v1, :cond_3

    move-object v1, p4

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$attr;->colorControlNormal:I

    invoke-static {p1, v5}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v4, v5, v6}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$attr;->colorControlNormal:I

    invoke-static {p1, v4}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4, v5}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$attr;->colorControlActivated:I

    invoke-static {p1, v3}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3, v4}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_3
    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_ratingbar_material:I

    if-eq p2, v1, :cond_5

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_ratingbar_indicator_material:I

    if-eq p2, v1, :cond_5

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_ratingbar_small_material:I

    if-ne p2, v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p1, p2, p4}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p3, :cond_6

    const/4 p4, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    move-object v1, p4

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$attr;->colorControlNormal:I

    invoke-static {p1, v5}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v4, v5, v6}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$attr;->colorControlActivated:I

    invoke-static {p1, v4}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4, v5}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$attr;->colorControlActivated:I

    invoke-static {p1, v3}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3, v4}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    nop

    :cond_6
    :goto_1
    return-object p4
.end method

.method static tintDrawable(Landroid/graphics/drawable/Drawable;Lcom/oneplus/lib/app/appcompat/TintInfo;[I)V
    .locals 2

    invoke-static {p0}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/oneplus/lib/app/appcompat/TintInfo;->mHasTintList:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/oneplus/lib/app/appcompat/TintInfo;->mHasTintMode:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3

    :cond_2
    :goto_0
    nop

    iget-boolean v0, p1, Lcom/oneplus/lib/app/appcompat/TintInfo;->mHasTintList:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/oneplus/lib/app/appcompat/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-boolean v1, p1, Lcom/oneplus/lib/app/appcompat/TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/oneplus/lib/app/appcompat/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    invoke-static {v0, v1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_5
    return-void
.end method

.method static tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v4, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_0

    sget v2, Lcom/oneplus/commonctrl/R$attr;->colorControlNormal:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    invoke-static {v4, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_1

    sget v2, Lcom/oneplus/commonctrl/R$attr;->colorControlActivated:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    invoke-static {v4, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_2

    const v2, 0x1010031

    const/4 v1, 0x1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_2
    sget v4, Lcom/oneplus/commonctrl/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v4, :cond_3

    const v2, 0x1010030

    const/4 v1, 0x1

    const v4, 0x42233333    # 40.8f

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_0

    :cond_3
    sget v4, Lcom/oneplus/commonctrl/R$drawable;->abc_dialog_material_background:I

    if-ne p1, v4, :cond_4

    const v2, 0x1010031

    const/4 v1, 0x1

    :cond_4
    :goto_0
    if-eqz v1, :cond_7

    invoke-static {p2}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_5
    invoke-static {p0, v2}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v5, -0x1

    if-eq v3, v5, :cond_6

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    const/4 v5, 0x1

    return v5

    :cond_7
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->checkVectorDrawableSetup(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-object v0
.end method

.method getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getTintList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method getTintList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_e

    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_edit_text_material:I

    if-ne p2, v2, :cond_2

    sget v2, Lcom/oneplus/commonctrl/R$color;->abc_tint_edittext:I

    invoke-static {p1, v2}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_3

    :cond_2
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v2, :cond_3

    sget v2, Lcom/oneplus/commonctrl/R$color;->abc_tint_switch_track:I

    invoke-static {p1, v2}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_3

    :cond_3
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_switch_thumb_material:I

    if-ne p2, v2, :cond_4

    sget v2, Lcom/oneplus/commonctrl/R$color;->op_abc_tint_switch_thumb:I

    invoke-static {p1, v2}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    :cond_4
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_btn_default_mtrl_shape:I

    if-ne p2, v2, :cond_5

    invoke-direct {p0, p1, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createDefaultButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    :cond_5
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_btn_borderless_material:I

    if-ne p2, v2, :cond_6

    invoke-direct {p0, p1, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createBorderlessButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    :cond_6
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_btn_colored_material:I

    if-ne p2, v2, :cond_7

    invoke-direct {p0, p1, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createColoredButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    :cond_7
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v2, :cond_c

    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_spinner_textfield_background_material:I

    if-ne p2, v2, :cond_8

    goto :goto_2

    :cond_8
    sget-object v2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v2, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v2

    if-eqz v2, :cond_9

    sget v2, Lcom/oneplus/commonctrl/R$attr;->colorControlNormal:I

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    :cond_9
    sget-object v2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    invoke-static {v2, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v2

    if-eqz v2, :cond_a

    sget v2, Lcom/oneplus/commonctrl/R$color;->abc_tint_default:I

    invoke-static {p1, v2}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    :cond_a
    sget-object v2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    invoke-static {v2, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v2

    if-eqz v2, :cond_b

    sget v2, Lcom/oneplus/commonctrl/R$color;->abc_tint_btn_checkable:I

    invoke-static {p1, v2}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    :cond_b
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_seekbar_thumb_material:I

    if-ne p2, v2, :cond_d

    sget v2, Lcom/oneplus/commonctrl/R$color;->abc_tint_seek_thumb:I

    invoke-static {p1, v2}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    :cond_c
    :goto_2
    sget v2, Lcom/oneplus/commonctrl/R$color;->abc_tint_spinner:I

    invoke-static {p1, v2}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :cond_d
    :goto_3
    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V

    :cond_e
    return-object v1
.end method

.method public onConfigurationChanged(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/util/LongSparseArray;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->clear()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onDrawableLoadedFromResources(Landroid/content/Context;Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-direct {p0, p1, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;->superGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
