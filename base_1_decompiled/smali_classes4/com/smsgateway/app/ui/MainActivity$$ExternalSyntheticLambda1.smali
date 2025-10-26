.class public final synthetic Lcom/smsgateway/app/ui/MainActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Landroid/widget/RadioButton;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroid/widget/RadioButton;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/RadioButton;Landroid/widget/EditText;Landroid/widget/RadioButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smsgateway/app/ui/MainActivity$$ExternalSyntheticLambda1;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/smsgateway/app/ui/MainActivity$$ExternalSyntheticLambda1;->f$1:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/smsgateway/app/ui/MainActivity$$ExternalSyntheticLambda1;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/smsgateway/app/ui/MainActivity$$ExternalSyntheticLambda1;->f$3:Landroid/widget/RadioButton;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6

    iget-object v0, p0, Lcom/smsgateway/app/ui/MainActivity$$ExternalSyntheticLambda1;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/smsgateway/app/ui/MainActivity$$ExternalSyntheticLambda1;->f$1:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/smsgateway/app/ui/MainActivity$$ExternalSyntheticLambda1;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/smsgateway/app/ui/MainActivity$$ExternalSyntheticLambda1;->f$3:Landroid/widget/RadioButton;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/smsgateway/app/ui/MainActivity;->$r8$lambda$QDFLdIVeINHOba4H4NnFWQdwEqk(Landroid/widget/EditText;Landroid/widget/RadioButton;Landroid/widget/EditText;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;I)V

    return-void
.end method
