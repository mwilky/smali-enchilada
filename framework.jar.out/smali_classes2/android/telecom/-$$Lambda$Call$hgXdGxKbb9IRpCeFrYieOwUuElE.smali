.class public final synthetic Landroid/telecom/-$$Lambda$Call$hgXdGxKbb9IRpCeFrYieOwUuElE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telecom/Call$Callback;

.field private final synthetic f$1:Landroid/telecom/Call;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/-$$Lambda$Call$hgXdGxKbb9IRpCeFrYieOwUuElE;->f$0:Landroid/telecom/Call$Callback;

    iput-object p2, p0, Landroid/telecom/-$$Lambda$Call$hgXdGxKbb9IRpCeFrYieOwUuElE;->f$1:Landroid/telecom/Call;

    iput p3, p0, Landroid/telecom/-$$Lambda$Call$hgXdGxKbb9IRpCeFrYieOwUuElE;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/telecom/-$$Lambda$Call$hgXdGxKbb9IRpCeFrYieOwUuElE;->f$0:Landroid/telecom/Call$Callback;

    iget-object v1, p0, Landroid/telecom/-$$Lambda$Call$hgXdGxKbb9IRpCeFrYieOwUuElE;->f$1:Landroid/telecom/Call;

    iget v2, p0, Landroid/telecom/-$$Lambda$Call$hgXdGxKbb9IRpCeFrYieOwUuElE;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/telecom/Call;->lambda$internalOnRttUpgradeRequest$0(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    return-void
.end method
