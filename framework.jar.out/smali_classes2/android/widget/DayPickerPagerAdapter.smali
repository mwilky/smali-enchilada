.class Landroid/widget/DayPickerPagerAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "DayPickerPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;,
        Landroid/widget/DayPickerPagerAdapter$ViewHolder;
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
            "Landroid/widget/DayPickerPagerAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutResId:I

.field private final mMaxDate:Landroid/icu/util/Calendar;

.field private final mMinDate:Landroid/icu/util/Calendar;

.field private mMonthTextAppearance:I

.field private final mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

.field private mSelectedDay:Landroid/icu/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    new-instance v0, Landroid/widget/DayPickerPagerAdapter$1;

    invoke-direct {v0, p0}, Landroid/widget/DayPickerPagerAdapter$1;-><init>(Landroid/widget/DayPickerPagerAdapter;)V

    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Landroid/widget/DayPickerPagerAdapter;->mLayoutResId:I

    iput p3, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarViewId:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101042c

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/DayPickerPagerAdapter;)Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    return-object v0
.end method

.method private getMonthForPosition(I)I
    .locals 2

    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0xc

    return v0
.end method

.method private getPositionForDay(Landroid/icu/util/Calendar;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v2, v0

    mul-int/lit8 v0, v1, 0xc

    add-int/2addr v0, v2

    return v0
.end method

.method private getYearForPosition(I)I
    .locals 3

    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    move-object v0, p3

    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    iget-object v1, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public getBoundsForDate(Landroid/icu/util/Calendar;Landroid/graphics/Rect;)Z
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/DayPickerPagerAdapter;->getPositionForDay(Landroid/icu/util/Calendar;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, v1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    invoke-virtual {v3, v2, p2}, Landroid/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    move-result v3

    return v3
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mCount:I

    return v0
.end method

.method getDayOfWeekTextAppearance()I
    .locals 1

    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    return v0
.end method

.method getDayTextAppearance()I
    .locals 1

    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    iget v1, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->position:I

    return v1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    iget-object v0, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView;->getMonthYearLabel()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getView(Ljava/lang/Object;)Landroid/widget/SimpleMonthView;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    iget-object v1, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    return-object v1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/widget/DayPickerPagerAdapter;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SimpleMonthView;

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V

    iget v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMonthTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setMonthTextAppearance(I)V

    iget v2, p0, Landroid/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setDayOfWeekTextAppearance(I)V

    iget v2, p0, Landroid/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setDayTextAppearance(I)V

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setDayHighlightColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setMonthTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setDayTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/DayPickerPagerAdapter;->getMonthForPosition(I)I

    move-result v9

    invoke-direct {p0, p2}, Landroid/widget/DayPickerPagerAdapter;->getYearForPosition(I)I

    move-result v10

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v9, :cond_3

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_0
    move v3, v2

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v9, :cond_4

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v10, :cond_4

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    move v7, v2

    goto :goto_1

    :cond_4
    move v7, v6

    :goto_1
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v9, :cond_5

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v10, :cond_5

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    goto :goto_2

    :cond_5
    const/16 v2, 0x1f

    :goto_2
    move v8, v2

    iget v6, p0, Landroid/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    move-object v2, v1

    move v4, v9

    move v5, v10

    invoke-virtual/range {v2 .. v8}, Landroid/widget/SimpleMonthView;->setMonthParams(IIIIII)V

    new-instance v2, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    invoke-direct {v2, p2, v0, v1}, Landroid/widget/DayPickerPagerAdapter$ViewHolder;-><init>(ILandroid/view/View;Landroid/widget/SimpleMonthView;)V

    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 2

    move-object v0, p2

    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    iget-object v1, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

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

    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setDayOfWeekTextAppearance(I)V
    .locals 0

    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setDayTextAppearance(I)V
    .locals 0

    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 3

    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    iget-object v2, v2, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    invoke-virtual {v2, p1}, Landroid/widget/SimpleMonthView;->setFirstDayOfWeek(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setMonthTextAppearance(I)V
    .locals 0

    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mMonthTextAppearance:I

    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnDaySelectedListener(Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    return-void
.end method

.method public setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V
    .locals 5

    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v4, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0xc

    mul-int/2addr v3, v0

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    iput v3, p0, Landroid/widget/DayPickerPagerAdapter;->mCount:I

    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedDay(Landroid/icu/util/Calendar;)V
    .locals 6

    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0}, Landroid/widget/DayPickerPagerAdapter;->getPositionForDay(Landroid/icu/util/Calendar;)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/widget/DayPickerPagerAdapter;->getPositionForDay(Landroid/icu/util/Calendar;)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v3, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/SimpleMonthView;->setSelectedDay(I)V

    :cond_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    if-eqz v2, :cond_1

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, v2, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    invoke-virtual {v4, v3}, Landroid/widget/SimpleMonthView;->setSelectedDay(I)V

    :cond_1
    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    return-void
.end method
