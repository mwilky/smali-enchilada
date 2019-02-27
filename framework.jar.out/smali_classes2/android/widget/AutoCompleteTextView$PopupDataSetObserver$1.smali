.class Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;


# direct methods
.method constructor <init>(Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$0:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$0:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-static {v0}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->access$800(Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/widget/AutoCompleteTextView;->access$700(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    invoke-static {v0, v2}, Landroid/widget/AutoCompleteTextView;->access$900(Landroid/widget/AutoCompleteTextView;I)V

    return-void
.end method
