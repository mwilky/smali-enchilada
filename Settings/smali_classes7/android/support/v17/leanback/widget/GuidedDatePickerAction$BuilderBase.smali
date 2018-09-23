.class public abstract Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;
.super Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
.source "GuidedDatePickerAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GuidedDatePickerAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BuilderBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;",
        ">",
        "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private mDate:J

.field private mDatePickerFormat:Ljava/lang/String;

.field private mMaxDate:J

.field private mMinDate:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;-><init>(Landroid/content/Context;)V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;->mMinDate:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;->mMaxDate:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;->mDate:J

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;->hasEditableActivatorView(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;

    return-void
.end method


# virtual methods
.method protected final applyDatePickerValues(Landroid/support/v17/leanback/widget/GuidedDatePickerAction;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->applyValues(Landroid/support/v17/leanback/widget/GuidedAction;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;->mDatePickerFormat:Ljava/lang/String;

    iput-object v0, p1, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->mDatePickerFormat:Ljava/lang/String;

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;->mDate:J

    iput-wide v0, p1, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->mDate:J

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;->mMinDate:J

    iget-wide v2, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;->mMaxDate:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;->mMinDate:J

    iput-wide v0, p1, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->mMinDate:J

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;->mMaxDate:J

    iput-wide v0, p1, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->mMaxDate:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MinDate cannot be larger than MaxDate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public date(J)Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;->mDate:J

    return-object p0
.end method

.method public datePickerFormat(Ljava/lang/String;)Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;->mDatePickerFormat:Ljava/lang/String;

    return-object p0
.end method

.method public maxDate(J)Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;->mMaxDate:J

    return-object p0
.end method

.method public minDate(J)Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;->mMinDate:J

    return-object p0
.end method
