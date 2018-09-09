.class Lcom/android/server/OemSceneGameModeDialog$8;
.super Ljava/lang/Object;
.source "OemSceneGameModeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModeDialog;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneGameModeDialog;

.field final synthetic val$animDrawable2:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModeDialog;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 203
    iput-object p1, p0, Lcom/android/server/OemSceneGameModeDialog$8;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    iput-object p2, p0, Lcom/android/server/OemSceneGameModeDialog$8;->val$animDrawable2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$8;->val$animDrawable2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 207
    return-void
.end method
