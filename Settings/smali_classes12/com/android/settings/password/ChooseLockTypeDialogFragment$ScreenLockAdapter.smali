.class Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ChooseLockTypeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockTypeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenLockAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/password/ScreenLockType;",
        ">;"
    }
.end annotation


# instance fields
.field private final mController:Lcom/android/settings/password/ChooseLockGenericController;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/password/ChooseLockGenericController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/password/ScreenLockType;",
            ">;",
            "Lcom/android/settings/password/ChooseLockGenericController;",
            ")V"
        }
    .end annotation

    const v0, 0x7f0d0047

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    return-void
.end method

.method private static getIconForScreenLock(Landroid/content/Context;Lcom/android/settings/password/ScreenLockType;)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget-object v0, Lcom/android/settings/password/ChooseLockTypeDialogFragment$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {p1}, Lcom/android/settings/password/ScreenLockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const v0, 0x7f0801ea

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :pswitch_1
    const v0, 0x7f0801ef

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :pswitch_2
    const v0, 0x7f0801eb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0047

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/password/ScreenLockType;

    move-object v2, p2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v3, v1}, Lcom/android/settings/password/ChooseLockGenericController;->getTitle(Lcom/android/settings/password/ScreenLockType;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    nop

    invoke-static {v0, v1}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;->getIconForScreenLock(Landroid/content/Context;Lcom/android/settings/password/ScreenLockType;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
