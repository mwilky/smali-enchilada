.class Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$2;
.super Ljava/lang/Object;
.source "DatePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/CalendarView$OnDateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;-><init>(Lcom/oneplus/lib/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedDayChange(Landroid/widget/CalendarView;III)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v0, p2, p3, p4}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$500(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;III)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$600(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$800(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V

    return-void
.end method
