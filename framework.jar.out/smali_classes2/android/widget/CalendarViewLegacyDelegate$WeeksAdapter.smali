.class Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarViewLegacyDelegate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarViewLegacyDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeeksAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter$CalendarGestureListener;
    }
.end annotation


# instance fields
.field private mFocusedMonth:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mSelectedDate:Landroid/icu/util/Calendar;

.field private mSelectedWeek:I

.field private mTotalWeekCount:I

.field final synthetic this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method public constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    iput-object p2, p1, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object p1, p1, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter$CalendarGestureListener;

    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter$CalendarGestureListener;-><init>(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->init()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1400(Landroid/widget/CalendarViewLegacyDelegate;Landroid/icu/util/Calendar;)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedWeek:I

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1500(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1400(Landroid/widget/CalendarViewLegacyDelegate;Landroid/icu/util/Calendar;)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mTotalWeekCount:I

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1600(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1500(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mTotalWeekCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mTotalWeekCount:I

    :cond_1
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private onDateTapped(Landroid/icu/util/Calendar;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Landroid/icu/util/Calendar;)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2000(Landroid/widget/CalendarViewLegacyDelegate;Landroid/icu/util/Calendar;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mTotalWeekCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedDay()Landroid/icu/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v3, v3, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V

    move-object v0, v1

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->setClickable(Z)V

    invoke-virtual {v0, p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedWeek:I

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mFocusedMonth:I

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->init(III)V

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getDayFromLocation(FLandroid/icu/util/Calendar;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1600(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1500(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->onDateTapped(Landroid/icu/util/Calendar;)V

    return v2

    :cond_2
    :goto_0
    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public setFocusMonth(I)V
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mFocusedMonth:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mFocusedMonth:I

    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedDay(Landroid/icu/util/Calendar;)V
    .locals 3

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1400(Landroid/widget/CalendarViewLegacyDelegate;Landroid/icu/util/Calendar;)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedWeek:I

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mFocusedMonth:I

    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    return-void
.end method
