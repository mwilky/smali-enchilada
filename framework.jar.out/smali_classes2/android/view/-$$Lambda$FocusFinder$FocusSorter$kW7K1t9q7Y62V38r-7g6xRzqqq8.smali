.class public final synthetic Landroid/view/-$$Lambda$FocusFinder$FocusSorter$kW7K1t9q7Y62V38r-7g6xRzqqq8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:Landroid/view/FocusFinder$FocusSorter;


# direct methods
.method public synthetic constructor <init>(Landroid/view/FocusFinder$FocusSorter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$FocusFinder$FocusSorter$kW7K1t9q7Y62V38r-7g6xRzqqq8;->f$0:Landroid/view/FocusFinder$FocusSorter;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroid/view/-$$Lambda$FocusFinder$FocusSorter$kW7K1t9q7Y62V38r-7g6xRzqqq8;->f$0:Landroid/view/FocusFinder$FocusSorter;

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-static {v0, p1, p2}, Landroid/view/FocusFinder$FocusSorter;->lambda$new$0(Landroid/view/FocusFinder$FocusSorter;Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
