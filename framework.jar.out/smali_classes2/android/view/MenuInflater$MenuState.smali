.class Landroid/view/MenuInflater$MenuState;
.super Ljava/lang/Object;
.source "MenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field private itemActionProvider:Landroid/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticModifiers:I

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemContentDescription:Ljava/lang/CharSequence;

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemIconTintList:Landroid/content/res/ColorStateList;

.field private itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericModifiers:I

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemTooltipText:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Landroid/view/MenuInflater;


# direct methods
.method public constructor <init>(Landroid/view/MenuInflater;Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    invoke-virtual {p0}, Landroid/view/MenuInflater$MenuState;->resetGroup()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;
    .locals 1

    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    return-object v0
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v0}, Landroid/view/MenuInflater;->access$100(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const-string v1, "MenuInflater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot instantiate class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 4

    iget-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemVisible:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemIconResId:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticShortcut:C

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticModifiers:I

    invoke-interface {v0, v1, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, Landroid/view/MenuInflater$MenuState;->itemNumericShortcut:C

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemNumericModifiers:I

    invoke-interface {v0, v1, v3}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    iget v0, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    :cond_2
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    :cond_3
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v0}, Landroid/view/MenuInflater;->access$100(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;

    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v1}, Landroid/view/MenuInflater;->access$400(Landroid/view/MenuInflater;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    instance-of v0, p1, Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    const/4 v3, 0x2

    if-lt v1, v3, :cond_6

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    :cond_6
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    invoke-static {}, Landroid/view/MenuInflater;->access$500()[Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v3}, Landroid/view/MenuInflater;->access$600(Landroid/view/MenuInflater;)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Landroid/view/MenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v0, 0x1

    :cond_7
    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v1, :cond_9

    if-nez v0, :cond_8

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const-string v1, "MenuInflater"

    const-string v2, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    :cond_a
    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public addItem()Landroid/view/MenuItem;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    iget v2, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/MenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    iget v2, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/MenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 4

    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v0}, Landroid/view/MenuInflater;->access$100(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->MenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 8

    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v0}, Landroid/view/MenuInflater;->access$100(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->MenuItem:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    iget v2, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/high16 v4, -0x10000

    and-int/2addr v4, v2

    const v5, 0xffff

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemIconResId:I

    const/16 v4, 0x16

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    iput-object v7, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    const/16 v4, 0x15

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_1
    iput-object v7, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    :goto_1
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/MenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticShortcut:C

    const/16 v4, 0x13

    const/16 v5, 0x1000

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticModifiers:I

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/MenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Landroid/view/MenuInflater$MenuState;->itemNumericShortcut:C

    const/16 v4, 0x14

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemNumericModifiers:I

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    goto :goto_2

    :cond_2
    iget v4, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    :goto_2
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/MenuInflater$MenuState;->itemChecked:Z

    const/4 v4, 0x4

    iget-boolean v5, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/MenuInflater$MenuState;->itemVisible:Z

    iget-boolean v4, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/MenuInflater$MenuState;->itemEnabled:Z

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    const/16 v4, 0xf

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    move v4, v5

    if-eqz v4, :cond_4

    iget v5, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    invoke-static {}, Landroid/view/MenuInflater;->access$200()[Ljava/lang/Class;

    move-result-object v6

    iget-object v7, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v7}, Landroid/view/MenuInflater;->access$300(Landroid/view/MenuInflater;)[Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Landroid/view/MenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ActionProvider;

    iput-object v5, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    const-string v5, "MenuInflater"

    const-string v6, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-object v7, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    :goto_4
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/view/MenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/view/MenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    return-void
.end method

.method public resetGroup()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    return-void
.end method
