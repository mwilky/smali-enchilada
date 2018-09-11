.class Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;
.super Landroid/os/AsyncTask;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/setting/lib/SettingsDrawerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoriesUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

.field final synthetic this$0:Lcom/oneplus/setting/lib/SettingsDrawerActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/setting/lib/SettingsDrawerActivity;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;->this$0:Lcom/oneplus/setting/lib/SettingsDrawerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 194
    invoke-static {p1}, Lcom/android/settingslib/drawer/CategoryManager;->get(Landroid/content/Context;)Lcom/android/settingslib/drawer/CategoryManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    .line 195
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 189
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .line 199
    iget-object v0, p0, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    iget-object v1, p0, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;->this$0:Lcom/oneplus/setting/lib/SettingsDrawerActivity;

    iget-object v2, p0, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;->this$0:Lcom/oneplus/setting/lib/SettingsDrawerActivity;

    invoke-virtual {v2}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->getSettingPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/drawer/CategoryManager;->reloadAllCategories(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 189
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .line 205
    iget-object v0, p0, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    invoke-static {}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->access$100()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/CategoryManager;->updateCategoryFromBlacklist(Ljava/util/Set;)V

    .line 206
    iget-object v0, p0, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;->this$0:Lcom/oneplus/setting/lib/SettingsDrawerActivity;

    invoke-static {v0}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->access$200(Lcom/oneplus/setting/lib/SettingsDrawerActivity;)V

    .line 207
    return-void
.end method
