.class public final synthetic Lcom/oneplus/util/notification/-$$Lambda$SimpleHeadsUpDialog$ContentWindowView$x-qRTKHVLMsXOHknrnaSCxODphQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

.field private final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/util/notification/-$$Lambda$SimpleHeadsUpDialog$ContentWindowView$x-qRTKHVLMsXOHknrnaSCxODphQ;->f$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    iput-object p2, p0, Lcom/oneplus/util/notification/-$$Lambda$SimpleHeadsUpDialog$ContentWindowView$x-qRTKHVLMsXOHknrnaSCxODphQ;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/util/notification/-$$Lambda$SimpleHeadsUpDialog$ContentWindowView$x-qRTKHVLMsXOHknrnaSCxODphQ;->f$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    iget-object v1, p0, Lcom/oneplus/util/notification/-$$Lambda$SimpleHeadsUpDialog$ContentWindowView$x-qRTKHVLMsXOHknrnaSCxODphQ;->f$1:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->lambda$onViewAdded$0(Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;Landroid/view/View;)V

    return-void
.end method
