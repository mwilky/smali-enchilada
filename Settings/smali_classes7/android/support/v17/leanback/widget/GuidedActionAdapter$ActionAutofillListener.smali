.class Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionAutofillListener;
.super Ljava/lang/Object;
.source "GuidedActionAdapter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/GuidedActionAutofillSupport$OnAutofillListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GuidedActionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionAutofillListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;


# direct methods
.method private constructor <init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionAutofillListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionAutofillListener;-><init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V

    return-void
.end method


# virtual methods
.method public onAutofill(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionAutofillListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionAutofillListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    move-object v2, p1

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->fillAndGoNext(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V

    return-void
.end method
