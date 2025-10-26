.class public final synthetic Lcom/smsgateway/app/ui/MainActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/RadioButton;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Lcom/smsgateway/app/ui/MainActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RadioButton;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/smsgateway/app/ui/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smsgateway/app/ui/MainActivity$$ExternalSyntheticLambda2;->f$0:Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/smsgateway/app/ui/MainActivity$$ExternalSyntheticLambda2;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/smsgateway/app/ui/MainActivity$$ExternalSyntheticLambda2;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/smsgateway/app/ui/MainActivity$$ExternalSyntheticLambda2;->f$3:Lcom/smsgateway/app/ui/MainActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/smsgateway/app/ui/MainActivity$$ExternalSyntheticLambda2;->f$0:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/smsgateway/app/ui/MainActivity$$ExternalSyntheticLambda2;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/smsgateway/app/ui/MainActivity$$ExternalSyntheticLambda2;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/smsgateway/app/ui/MainActivity$$ExternalSyntheticLambda2;->f$3:Lcom/smsgateway/app/ui/MainActivity;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/smsgateway/app/ui/MainActivity;->$r8$lambda$QZKtJaOkScY04G7nIysIF7aC05E(Landroid/widget/RadioButton;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/smsgateway/app/ui/MainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
