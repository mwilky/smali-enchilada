.class public Lcom/android/settings/development/AppPicker$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/development/AppPicker$MyApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPackageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/development/AppPicker$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/development/AppPicker;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/AppPicker;Landroid/content/Context;)V
    .locals 11

    iput-object p1, p0, Lcom/android/settings/development/AppPicker$AppListAdapter;->this$0:Lcom/android/settings/development/AppPicker;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/development/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/development/AppPicker$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p1}, Lcom/android/settings/development/AppPicker;->access$000(Lcom/android/settings/development/AppPicker;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    const-string v4, "user"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_4

    :cond_1
    invoke-static {p1}, Lcom/android/settings/development/AppPicker;->access$100(Lcom/android/settings/development/AppPicker;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    move v4, v0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/settings/development/AppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x1000

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v6, :cond_2

    goto :goto_4

    :cond_2
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v6

    move v8, v0

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    invoke-static {p1}, Lcom/android/settings/development/AppPicker;->access$100(Lcom/android/settings/development/AppPicker;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_4

    :cond_6
    :goto_3
    new-instance v4, Lcom/android/settings/development/AppPicker$MyApplicationInfo;

    invoke-direct {v4, p1}, Lcom/android/settings/development/AppPicker$MyApplicationInfo;-><init>(Lcom/android/settings/development/AppPicker;)V

    iput-object v3, v4, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Lcom/android/settings/development/AppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings/development/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/settings/development/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-static {}, Lcom/android/settings/development/AppPicker;->access$200()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Lcom/android/settings/development/AppPicker$MyApplicationInfo;

    invoke-direct {v2, p1}, Lcom/android/settings/development/AppPicker$MyApplicationInfo;-><init>(Lcom/android/settings/development/AppPicker;)V

    const v3, 0x7f1209b5

    invoke-virtual {p2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/development/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v3, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/development/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/AppPicker$AppListAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/development/AppPicker$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v0, p2}, Lcom/android/settings/development/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/development/AppViewHolder;

    move-result-object v0

    iget-object p2, v0, Lcom/android/settings/development/AppViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/AppPicker$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/development/AppPicker$MyApplicationInfo;

    iget-object v2, v0, Lcom/android/settings/development/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/development/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/settings/development/AppPicker$AppListAdapter;->this$0:Lcom/android/settings/development/AppPicker;

    invoke-virtual {v4}, Lcom/android/settings/development/AppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/android/settings/development/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/settings/development/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/android/settings/development/AppViewHolder;->summary:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v2, v0, Lcom/android/settings/development/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p2
.end method
