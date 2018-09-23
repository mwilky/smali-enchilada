.class Lcom/android/server/policy/OemPhoneWindowManager$10$1;
.super Landroid/widget/ArrayAdapter;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemPhoneWindowManager$10;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/OemPhoneWindowManager$10;

.field final synthetic val$availableApps:Ljava/util/ArrayList;

.field final synthetic val$nowWhich:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager$10;Landroid/content/Context;II[Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$10$1;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$10;

    iput p6, p0, Lcom/android/server/policy/OemPhoneWindowManager$10$1;->val$nowWhich:I

    iput-object p7, p0, Lcom/android/server/policy/OemPhoneWindowManager$10$1;->val$availableApps:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$10$1;->val$nowWhich:I

    if-ne p1, v1, :cond_0

    const v1, 0x5070034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_0
    const v1, 0x5070035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$10$1;->val$availableApps:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v2, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/CheckedTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
