.class Lcom/oneplus/lib/widget/DayPickerPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "DayPickerPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;,
        Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final MONTHS_IN_YEAR:I = 0xc


# instance fields
.field private mCalendarTextColor:Landroid/content/res/ColorStateList;

.field private final mCalendarViewId:I

.field private mCount:I

.field private mDayHighlightColor:Landroid/content/res/ColorStateList;

.field private mDayOfWeekTextAppearance:I

.field private mDaySelectorColor:Landroid/content/res/ColorStateList;

.field private mDayTextAppearance:I

.field private mFirstDayOfWeek:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutResId:I

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private mMonthTextAppearance:I

.field private final mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

.field private mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;

.field private mSelectedDay:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "layoutResId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p3, "calendarViewId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 24
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    .line 25
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    .line 296
    new-instance v0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$1;-><init>(Lcom/oneplus/lib/widget/DayPickerPagerAdapter;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    iput p2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mLayoutResId:I

    .line 52
    iput p3, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mCalendarViewId:I

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101042c

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/DayPickerPagerAdapter;)Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    .line 21
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    return-object v0
.end method

.method private getMonthForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .line 187
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0xc

    return v0
.end method

.method private getPositionForDay(Ljava/util/Calendar;)I
    .locals 4
    .param p1, "day"    # Ljava/util/Calendar;

    .line 196
    if-nez p1, :cond_0

    .line 197
    const/4 v0, -0x1

    return v0

    .line 200
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    .line 201
    .local v1, "yearOffset":I
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v2, v0

    .line 202
    .local v2, "monthOffset":I
    mul-int/lit8 v0, v1, 0xc

    add-int/2addr v0, v2

    .line 203
    .local v0, "position":I
    return v0
.end method

.method private getYearForPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .line 191
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0xc

    .line 192
    .local v0, "yearOffset":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 267
    move-object v0, p3

    check-cast v0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;

    .line 268
    .local v0, "holder":Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;
    iget-object v1, v0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 270
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 271
    return-void
.end method

.method public getBoundsForDate(Ljava/util/Calendar;Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "day"    # Ljava/util/Calendar;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 94
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getPositionForDay(Ljava/util/Calendar;)I

    move-result v0

    .line 95
    .local v0, "position":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;

    .line 96
    .local v1, "monthView":Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;
    if-nez v1, :cond_0

    .line 97
    const/4 v2, 0x0

    return v2

    .line 99
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 100
    .local v2, "dayOfMonth":I
    iget-object v3, v1, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-virtual {v3, v2, p2}, Lcom/oneplus/lib/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    move-result v3

    return v3
.end method

.method public getCount()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mCount:I

    return v0
.end method

.method getDayOfWeekTextAppearance()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    return v0
.end method

.method getDayTextAppearance()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 275
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;

    .line 276
    .local v0, "holder":Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;
    iget v1, v0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;->position:I

    return v1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .line 281
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;

    iget-object v0, v0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/oneplus/lib/widget/SimpleMonthView;

    .line 282
    .local v0, "v":Lcom/oneplus/lib/widget/SimpleMonthView;
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getMonthYearLabel()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 285
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getView(Ljava/lang/Object;)Lcom/oneplus/lib/widget/SimpleMonthView;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 289
    if-nez p1, :cond_0

    .line 290
    const/4 v0, 0x0

    return-object v0

    .line 292
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;

    .line 293
    .local v0, "holder":Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;
    iget-object v1, v0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/oneplus/lib/widget/SimpleMonthView;

    return-object v1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 11
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 208
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 210
    .local v0, "itemView":Landroid/view/View;
    iget v1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mCalendarViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/SimpleMonthView;

    .line 211
    .local v1, "v":Lcom/oneplus/lib/widget/SimpleMonthView;
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->setOnDayClickListener(Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;)V

    .line 212
    iget v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMonthTextAppearance:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->setMonthTextAppearance(I)V

    .line 213
    iget v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->setDayOfWeekTextAppearance(I)V

    .line 214
    iget v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->setDayTextAppearance(I)V

    .line 216
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->setDayHighlightColor(Landroid/content/res/ColorStateList;)V

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 225
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->setMonthTextColor(Landroid/content/res/ColorStateList;)V

    .line 226
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V

    .line 227
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->setDayTextColor(Landroid/content/res/ColorStateList;)V

    .line 230
    :cond_2
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getMonthForPosition(I)I

    move-result v9

    .line 231
    .local v9, "month":I
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getYearForPosition(I)I

    move-result v10

    .line 234
    .local v10, "year":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v9, :cond_3

    .line 235
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .local v2, "selectedDay":I
    goto :goto_0

    .line 237
    .end local v2    # "selectedDay":I
    :cond_3
    const/4 v2, -0x1

    .local v3, "selectedDay":I
    :goto_0
    move v3, v2

    .line 241
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v9, :cond_4

    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v10, :cond_4

    .line 242
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 244
    .local v2, "enabledDayRangeStart":I
    move v7, v2

    goto :goto_1

    .end local v2    # "enabledDayRangeStart":I
    :cond_4
    move v7, v6

    .line 248
    .local v7, "enabledDayRangeStart":I
    :goto_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v9, :cond_5

    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v10, :cond_5

    .line 249
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .local v2, "enabledDayRangeEnd":I
    goto :goto_2

    .line 251
    .end local v2    # "enabledDayRangeEnd":I
    :cond_5
    const/16 v2, 0x1f

    .local v8, "enabledDayRangeEnd":I
    :goto_2
    move v8, v2

    .line 254
    iget v6, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    move-object v2, v1

    move v4, v9

    move v5, v10

    invoke-virtual/range {v2 .. v8}, Lcom/oneplus/lib/widget/SimpleMonthView;->setMonthParams(IIIIII)V

    .line 257
    new-instance v2, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;

    invoke-direct {v2, p2, v0, v1}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;-><init>(ILandroid/view/View;Lcom/oneplus/lib/widget/SimpleMonthView;)V

    .line 258
    .local v2, "holder":Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;
    iget-object v4, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 262
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 182
    move-object v0, p2

    check-cast v0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;

    .line 183
    .local v0, "holder":Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;
    iget-object v1, v0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method setCalendarTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "calendarTextColor"    # Landroid/content/res/ColorStateList;

    .line 143
    iput-object p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    .line 144
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    .line 145
    return-void
.end method

.method setDayOfWeekTextAppearance(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 158
    iput p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    .line 159
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    .line 160
    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "selectorColor"    # Landroid/content/res/ColorStateList;

    .line 148
    iput-object p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    .line 149
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    .line 150
    return-void
.end method

.method setDayTextAppearance(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 167
    iput p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    .line 168
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    .line 169
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 3
    .param p1, "weekStart"    # I

    .line 79
    iput p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    .line 82
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 83
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 84
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;

    iget-object v2, v2, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/oneplus/lib/widget/SimpleMonthView;

    .line 85
    .local v2, "monthView":Lcom/oneplus/lib/widget/SimpleMonthView;
    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->setFirstDayOfWeek(I)V

    .line 83
    .end local v2    # "monthView":Lcom/oneplus/lib/widget/SimpleMonthView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method setMonthTextAppearance(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 153
    iput p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMonthTextAppearance:I

    .line 154
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    .line 155
    return-void
.end method

.method public setOnDaySelectedListener(Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    .line 139
    iput-object p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    .line 140
    return-void
.end method

.method public setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 5
    .param p1, "min"    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "max"    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 62
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 64
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 65
    .local v0, "diffYear":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v4, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 66
    .local v2, "diffMonth":I
    const/16 v3, 0xc

    mul-int/2addr v3, v0

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    iput v3, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mCount:I

    .line 69
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    .line 70
    return-void
.end method

.method public setSelectedDay(Ljava/util/Calendar;)V
    .locals 6
    .param p1, "day"    # Ljava/util/Calendar;

    .line 110
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getPositionForDay(Ljava/util/Calendar;)I

    move-result v0

    .line 111
    .local v0, "oldPosition":I
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getPositionForDay(Ljava/util/Calendar;)I

    move-result v1

    .line 114
    .local v1, "newPosition":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 115
    iget-object v3, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;

    .line 116
    .local v3, "oldMonthView":Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;
    if-eqz v3, :cond_0

    .line 117
    iget-object v4, v3, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/oneplus/lib/widget/SimpleMonthView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/SimpleMonthView;->setSelectedDay(I)V

    .line 122
    .end local v3    # "oldMonthView":Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;
    :cond_0
    if-ltz v1, :cond_1

    .line 123
    iget-object v3, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;

    .line 124
    .local v2, "newMonthView":Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;
    if-eqz v2, :cond_1

    .line 125
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 126
    .local v3, "dayOfMonth":I
    iget-object v4, v2, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/SimpleMonthView;->setSelectedDay(I)V

    .line 130
    .end local v2    # "newMonthView":Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;
    .end local v3    # "dayOfMonth":I
    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    .line 131
    return-void
.end method
