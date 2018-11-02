.class Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$1;
.super Ljava/lang/Object;
.source "OPCustomFingeprintAnimVideoPreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$1;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v0, 0x0

    return v0
.end method
